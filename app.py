from flask import Flask, request, jsonify, render_template
from sqlalchemy import create_engine, text
import logging
import json
from PIL import Image
import torch
from torchvision import transforms
import os
from flask_cors import CORS
import timm
import requests
from pathlib import Path
from tqdm import tqdm

logging.basicConfig(level=logging.INFO)
logger = logging.getLogger(__name__)

app = Flask(__name__)
CORS(app)

# 連接到 MySQL 資料庫
DB_USER = os.getenv("DB_USER", "root")
DB_PASSWORD = os.getenv("DB_PASSWORD", "weiwei2003921124")
DB_HOST = os.getenv("DB_HOST", "localhost")
DB_NAME = os.getenv("DB_NAME", "food_recipe")

DATABASE_URL = f"mysql+pymysql://{DB_USER}:{DB_PASSWORD}@{DB_HOST}:3306/{DB_NAME}?charset=utf8mb4"
engine = create_engine(DATABASE_URL, pool_pre_ping=True, connect_args={'charset': 'utf8mb4'})


def check_database_counts():
    """檢查資料庫中的記錄數量"""
    try:
        with engine.connect() as conn:
            dhr_count = conn.execute(text("SELECT COUNT(*) FROM dhr")).scalar()
            hr_count = conn.execute(text("SELECT COUNT(*) FROM hr")).scalar()
            nr_count = conn.execute(text("SELECT COUNT(*) FROM nr")).scalar()
            
            print("\n" + "="*50)
            print("資料庫記錄數量檢查")
            print("="*50)
            print(f"dhr 表: {dhr_count} 筆 (預期: 101)")
            print(f"hr 表:  {hr_count} 筆 (預期: 約 50-60)")
            print(f"nr 表:  {nr_count} 筆 (預期: 101)")
            print("="*50 + "\n")
            
            if nr_count != 101:
                logger.warning(f"nr 表記錄數量不符! 預期 101 筆，實際 {nr_count} 筆")
            else:
                logger.info("所有資料表匯入成功!")
            
            return dhr_count, hr_count, nr_count
    except Exception as e:
        logger.error(f"檢查資料庫失敗: {e}")
        return 0, 0, 0

# url = "https://weiweihsu-my.sharepoint.com/:u:/g/personal/best_weiweihsu_onmicrosoft_com/EV14Df_TOEpGtp4z7Xh5NrAB7dqUsHUyggBk8sgk4oLgzA?download=1"

# output_file = "swin_model_disb.pth"
# try:
#     # 發送 GET 請求並下載檔案
#     response = requests.get(url, stream=True)
#     response.raise_for_status()  # 檢查請求是否成功

#     # 將內容寫入本地檔案
#     with open(output_file, "wb") as file:
#         for chunk in response.iter_content(chunk_size=8192):  # 分塊寫入檔案
#             file.write(chunk)
#     print(f"檔案已成功儲存為 {output_file}")
# except requests.exceptions.RequestException as e:
#     print(f"下載失敗: {e}")

# 首頁路由
@app.route('/')
def home():
    return render_template('homepage.html')

# 搜尋功能
@app.route('/search', methods=['GET'])
def search_recipes():
    query = request.args.get('query', '')
    lang = request.args.get('lang', 'en')
    if not query:
        return jsonify({'error': 'Missing query parameter'}), 400

    logger.info(f"搜尋請求: '{query}'")
    
    try:
        with engine.connect() as conn:
            # 使用參數化查詢防止 SQL 注入
            # 同時選取英文與中文欄位，並嘗試在 title 或 title_zh 中比對
            # 如果 title_zh 欄位不存在，fallback 到只搜尋 title
            try:
                result = conn.execute(
                    text("SELECT title, title_zh FROM nr WHERE title LIKE :query OR title_zh LIKE :query"), 
                    {"query": f"%{query}%"}
                )
                results = [{"title": row[0], "title_zh": row[1]} for row in result]
            except Exception as inner_e:
                # 如果 title_zh 欄位不存在，fallback 到只搜尋 title
                if 'Unknown column' in str(inner_e) or '1054' in str(inner_e):
                    logger.warning(f"title_zh 欄位不存在，使用 fallback 查詢")
                    result = conn.execute(
                        text("SELECT title FROM nr WHERE title LIKE :query"), 
                        {"query": f"%{query}%"}
                    )
                    results = [{"title": row[0], "title_zh": None} for row in result]
                else:
                    raise
            
        logger.info(f"搜尋 '{query}' 找到 {len(results)} 筆結果")
        return jsonify(results)
    except Exception as e:
        logger.error(f"搜尋發生錯誤: {e}")
        return jsonify({'error': str(e)}), 500

# 詳細食譜顯示
@app.route('/recipe_detail', methods=['GET'])
def recipe_detail():
    title = request.args.get('title', '')
    format = request.args.get('format', '')
    lang = request.args.get('lang', 'en')
    if not title:
        return "Missing title parameter", 400

    try:
        with engine.connect() as conn:
            # 從 DHR 表中檢查 have_healthy_recipe 值
            dhr_result = conn.execute(text("SELECT have_healthy_recipe FROM dhr WHERE title = :title"), 
                                    {"title": title})
            dhr_row = dhr_result.fetchone()
            
            if not dhr_row:
                return jsonify({'error': 'Recipe not found in DHR table'}), 404

            have_healthy_recipe = dhr_row[0]

            # 從 NR 表中獲取一般食譜
            nr_result = conn.execute(text("SELECT * FROM nr WHERE title = :title"), 
                                   {"title": title})
            nr_row = nr_result.fetchone()
            
            if not nr_row:
                return jsonify({'error': 'Recipe not found in NR table'}), 404

            # 將查詢結果轉換為字典
            nr_columns = nr_result.keys()
            original_recipe = dict(zip(nr_columns, nr_row))

            # 處理 ingredients 和 directions 欄位格式
            if original_recipe.get('ingredients') and isinstance(original_recipe['ingredients'], str):
                try:
                    original_recipe['ingredients'] = json.loads(original_recipe['ingredients'])
                except json.JSONDecodeError:
                    pass  # 如果無法解析 JSON，保持原始字串
                    
            if original_recipe.get('directions') and isinstance(original_recipe['directions'], str):
                try:
                    original_recipe['directions'] = json.loads(original_recipe['directions'])
                except json.JSONDecodeError:
                    pass  # 如果無法解析 JSON，保持原始字串

            # 處理中文欄位的 JSON 結構（如果存在）
            if original_recipe.get('ingredients_zh') and isinstance(original_recipe['ingredients_zh'], str):
                try:
                    original_recipe['ingredients_zh'] = json.loads(original_recipe['ingredients_zh'])
                except json.JSONDecodeError:
                    pass

            if original_recipe.get('directions_zh') and isinstance(original_recipe['directions_zh'], str):
                try:
                    original_recipe['directions_zh'] = json.loads(original_recipe['directions_zh'])
                except json.JSONDecodeError:
                    pass

            response_data = {'original': original_recipe}

            # 如果 have_healthy_recipe 為 1，獲取健康版本食譜
            if have_healthy_recipe == 1:
                hr_result = conn.execute(text("SELECT * FROM hr WHERE title = :title"), 
                                       {"title": title})
                hr_row = hr_result.fetchone()
                
                if hr_row:
                    hr_columns = hr_result.keys()
                    healthy_recipe = dict(zip(hr_columns, hr_row))
                    
                    # 處理 ingredients 和 directions 欄位格式
                    if healthy_recipe.get('ingredients') and isinstance(healthy_recipe['ingredients'], str):
                        try:
                            healthy_recipe['ingredients'] = json.loads(healthy_recipe['ingredients'])
                        except json.JSONDecodeError:
                            pass
                            
                    if healthy_recipe.get('directions') and isinstance(healthy_recipe['directions'], str):
                        try:
                            healthy_recipe['directions'] = json.loads(healthy_recipe['directions'])
                        except json.JSONDecodeError:
                            pass
                            
                    # 處理健康版本的中文欄位 JSON
                    if healthy_recipe.get('ingredients_zh') and isinstance(healthy_recipe['ingredients_zh'], str):
                        try:
                            healthy_recipe['ingredients_zh'] = json.loads(healthy_recipe['ingredients_zh'])
                        except json.JSONDecodeError:
                            pass

                    if healthy_recipe.get('directions_zh') and isinstance(healthy_recipe['directions_zh'], str):
                        try:
                            healthy_recipe['directions_zh'] = json.loads(healthy_recipe['directions_zh'])
                        except json.JSONDecodeError:
                            pass

                    response_data['healthy'] = healthy_recipe
                else:
                    response_data['healthy'] = {'message': 'Healthy recipe not found'}
            else:
                response_data['healthy'] = None  # 沒有健康版本時設為 None
        if format == '':
            return render_template('recipe_detail.html', recipe=response_data, lang=lang)
        else:
            return jsonify(response_data)
    except Exception as e:
        logging.error(f"Error occurred: {e}")
        return jsonify({'error': str(e)}), 500



# 模型加載
LABELS = ['apple_pie', 'baby_back_ribs', 'baklava', 'beef_carpaccio', 'beef_tartare',
          'beet_salad', 'beignets', 'bibimbap', 'bread_pudding', 'breakfast_burrito',
          'bruschetta', 'caesar_salad', 'cannoli', 'caprese_salad', 'carrot_cake',
          'ceviche', 'cheese_plate', 'cheesecake', 'chicken_curry', 'chicken_quesadilla',
          'chicken_wings', 'chocolate_cake', 'chocolate_mousse', 'churros', 'clam_chowder',
          'club_sandwich', 'crab_cakes', 'creme_brulee', 'croque_madame', 'cup_cakes',
          'deviled_eggs', 'donuts', 'dumplings', 'edamame', 'eggs_benedict', 'escargots',
          'falafel', 'filet_mignon', 'fish_and_chips', 'foie_gras', 'french_fries',
          'french_onion_soup', 'french_toast', 'fried_calamari', 'fried_rice', 'frozen_yogurt',
          'garlic_bread', 'gnocchi', 'greek_salad', 'grilled_cheese_sandwich', 'grilled_salmon',
          'guacamole', 'gyoza', 'hamburger', 'hot_and_sour_soup', 'hot_dog', 'huevos_rancheros',
          'hummus', 'ice_cream', 'lasagna', 'lobster_bisque', 'lobster_roll_sandwich',
          'macaroni_and_cheese', 'macarons', 'miso_soup', 'mussels', 'nachos', 'omelette',
          'onion_rings', 'oysters', 'pad_thai', 'paella', 'pancakes', 'panna_cotta', 'peking_duck',
          'pho', 'pizza', 'pork_chop', 'poutine', 'prime_rib', 'pulled_pork_sandwich', 'ramen',
          'ravioli', 'red_velvet_cake', 'risotto', 'samosa', 'sashimi', 'scallops',
          'seaweed_salad', 'shrimp_and_grits', 'spaghetti_bolognese', 'spaghetti_carbonara',
          'spring_rolls', 'steak', 'strawberry_shortcake', 'sushi', 'tacos', 'takoyaki',
          'tiramisu', 'tuna_tartare', 'waffles']

# 101 種食物的中文標籤對應
LABELS_ZH = [
    '蘋果派', '豬小排', '巴克拉瓦', '生牛肉薄片', '生牛肉塔塔',
    '甜菜沙拉', '法式炸糕', '拌飯', '麵包布丁', '早餐捲餅',
    '義式烤麵包', '凱薩沙拉', '奶油炸丸子', '卡普里沙拉', '胡蘿蔔蛋糕',
    '酸橘汁醃魚', '起司拼盤', '起司蛋糕', '咖喱雞', '雞肉捲餅',
    '雞翅', '巧克力蛋糕', '巧克力慕斯', '吉事果', '蛤蜊濃湯',
    '俱樂部三明治', '蟹肉餅', '法式焦糖布丁', '法式煎蛋三明治', '紙杯蛋糕',
    '魔鬼蛋', '甜甜圈', '餃子', '毛豆', '班尼迪克蛋', '法式田螺',
    '法拉費', '菲力牛排', '炸魚薯條', '鵝肝', '法式薯條',
    '法式洋蔥湯', '法式吐司', '炸魷魚', '炒飯', '冷凍優格',
    '蒜香麵包', '義大利麵疙瘩', '希臘沙拉', '烤起司三明治', '烤鮭魚',
    '酪梨醬', '日式煎餃', '漢堡', '酸辣湯', '熱狗', '墨西哥煎蛋',
    '鷹嘴豆泥', '冰淇淋', '千層麵', '龍蝦濃湯', '龍蝦堡',
    '起司通心麵', '馬卡龍', '味噌湯', '青口貝', '墨西哥玉米片', '煎蛋',
    '洋蔥圈', '生蠔', '泰式炒河粉', '西班牙海鮮飯', '鬆餅', '意式奶凍', '北京烤鴨',
    '越南河粉', '披薩', '豬排', '奶酪薯條', '頂級牛排', '手撕豬肉堡', '拉麵',
    '義大利餃', '紅絲絨蛋糕', '燉飯', '咖喱角', '生魚片', '干貝',
    '海草沙拉', '蝦仁粗麥粥', '肉醬義大利麵', '奶油培根義大利麵',
    '春捲', '牛排', '草莓鮮奶油蛋糕', '壽司', '墨西哥捲餅', '章魚燒',
    '提拉米蘇', '金槍魚塔塔', '華夫餅']

    

# 圖片預處理與預測
def preprocess_image(image_path, image_size=224):
    transform = transforms.Compose([
        transforms.Resize((image_size, image_size)),
        transforms.ToTensor(),
        transforms.Normalize(mean=[0.485, 0.456, 0.406], std=[0.229, 0.224, 0.225])
    ])
    image = Image.open(image_path).convert("RGB")
    image = transform(image)
    return image.unsqueeze(0)  # 增加一個 batch 維度

def predict_image(model, image_path, labels, device):
    # 預處理圖片
    input_tensor = preprocess_image(image_path).to(device)

    # 設置模型為評估模式
    model.eval()

    with torch.no_grad():
        outputs = model(input_tensor)
        predicted_class = torch.argmax(outputs, dim=1).item()
        predicted_label = labels[predicted_class]

    return predicted_label

# 取得專案根目錄的絕對路徑
BASE_DIR = Path(__file__).resolve().parent

# 修改模型相關設定
MODEL_CONFIG = {
    'local_path': BASE_DIR / 'models' / 'swin_model_disb.pth',
    'cloud_url': "https://weiweihsu-my.sharepoint.com/:u:/g/personal/best_weiweihsu_onmicrosoft_com/EV14Df_TOEpGtp4z7Xh5NrAB7dqUsHUyggBk8sgk4oLgzA?download=1",
    'chunk_size': 8192
}

def ensure_model_exists():
    """確保模型檔案存在，如果不存在則下載"""
    model_path = Path(MODEL_CONFIG['local_path'])
    
    # 建立資料夾（如果不存在）
    model_path.parent.mkdir(parents=True, exist_ok=True)
    
    if not model_path.exists():
        print("模型檔案不存在，開始下載...")
        try:
            download_model()
        except Exception as e:
            print(f"模型下載失敗: {e}")
            # 如果下載失敗，創建一個空的模型檔案，讓應用可以啟動但需要手動處理
            print("創建空模型檔案以避免啟動錯誤...")
            model_path.touch()
    else:
        print(f"模型檔案已存在於 {model_path}")
    return str(model_path)

def download_model():
    """下載模型檔案"""
    try:
        response = requests.get(MODEL_CONFIG['cloud_url'], stream=True)
        response.raise_for_status()
        
        # 取得檔案總大小
        total_size = int(response.headers.get('content-length', 0))
        block_size = MODEL_CONFIG['chunk_size']
        
        with open(MODEL_CONFIG['local_path'], 'wb') as f:
            # 使用 tqdm 建立進度條
            with tqdm(total=total_size, unit='iB', unit_scale=True) as pbar:
                for data in response.iter_content(chunk_size=block_size):
                    size = f.write(data)
                    pbar.update(size)
                    
        print(f"模型檔案已下載至 {MODEL_CONFIG['local_path']}")
    except Exception as e:
        print(f"下載失敗: {e}")
        raise

model = None
device = torch.device("cuda" if torch.cuda.is_available() else "cpu")

def load_model():
    global model
    if model is None:  # 只在模型未載入時載入
        try:
            model_path = ensure_model_exists()
            model = timm.create_model('swin_base_patch4_window7_224', pretrained=False, num_classes=len(LABELS))
            
            # 檢查模型檔案是否有內容
            if Path(model_path).stat().st_size == 0:
                print("警告: 模型檔案為空，使用預訓練權重")
                model = timm.create_model('swin_base_patch4_window7_224', pretrained=True, num_classes=len(LABELS))
            else:
                # 暫時忽略警告，使用 weights_only=False 以確保模型可以正常載入
                import warnings
                with warnings.catch_warnings():
                    warnings.simplefilter("ignore", FutureWarning)
                    state_dict = torch.load(model_path, map_location=device, weights_only=False)
                state_dict = {k.replace("module.", ""): v for k, v in state_dict.items()}
                model.load_state_dict(state_dict)
                
            model.to(device)
            model.eval()
            print("模型成功加載並轉移到設備")
        except Exception as e:
            print(f"模型載入失敗: {e}")
            print("使用預訓練模型作為備選")
            model = timm.create_model('swin_base_patch4_window7_224', pretrained=True, num_classes=len(LABELS))
            model.to(device)
            model.eval()

# 在應用啟動時載入模型，而不是每個請求時
load_model()


def wait_for_mysql(max_retries=30, retry_delay=2):
    """等待 MySQL 就緒"""
    import time
    for i in range(max_retries):
        try:
            with engine.connect() as conn:
                conn.execute(text("SELECT 1"))
            logger.info("MySQL 連接成功!")
            return True
        except Exception as e:
            if i < max_retries - 1:
                logger.info(f"等待 MySQL 就緒... ({i+1}/{max_retries})")
                time.sleep(retry_delay)
            else:
                logger.error(f"無法連接到 MySQL: {e}")
    return False


# 在應用啟動時檢查資料庫
if wait_for_mysql():
    check_database_counts()


@app.route('/upload', methods=['POST'])
def upload():
    try:
        if 'file' not in request.files:
            return jsonify({'error': 'No file uploaded'}), 400

        file = request.files['file']
        if file.filename == '':
            return jsonify({'error': 'No file selected'}), 400

        image_path = "uploaded_image.jpg"
        file.save(image_path)

        # 检查文件是否保存成功
        if not os.path.exists(image_path):
            print(f"Error: File {image_path} not saved.")
            return jsonify({'error': 'File not saved successfully'}), 500

        print(f"Image saved at {image_path}, size: {os.path.getsize(image_path)} bytes")

    except Exception as e:
        logging.error(f"Error: {e}")
        return jsonify({'error': str(e)}), 500
    
    try:
        # 调用预测函数
        predicted_label = predict_image(model, image_path, LABELS, device)
        # predicted_label = 'apple_pie'
        print(f"Predicted label: {predicted_label}")
        return jsonify({'swin_prediction': predicted_label})
    except Exception as e:
        logging.error(f"Error during image prediction: {e}")
        return jsonify({'error': str(e)}), 500

@app.route('/api/labels')
def get_labels():
    """Return the list of 101 food categories supported by the model."""
    lang = request.args.get('lang', 'en')
    if lang == 'zh':
        return jsonify(LABELS_ZH)
    return jsonify(LABELS)


if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)

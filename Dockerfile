FROM python:3.11-slim

WORKDIR /app

# 安裝系統依賴（PIL 需要的圖像處理庫）
RUN apt-get update && apt-get install -y \
    libgl1 \
    libglx-mesa0 \
    libglib2.0-0 \
    libgomp1 \
    && rm -rf /var/lib/apt/lists/*

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

# 建立模型目錄
RUN mkdir -p models

CMD ["python", "app.py"]

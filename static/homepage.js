// ============================================
// i18n (Internationalization) Dictionary
// ============================================
const i18n = {
    zh: {
        pageTitle: "深度學習食譜推薦系統",
        searchPlaceholder: "輸入菜名：（獲得食譜成份、步驟）",
        searchButton: "搜尋",
        uploadButton: "上傳圖片辨識",
        previewTitle: "圖片預覽：",
        previewAlt: "預覽圖片",
        pleaseEnterKeyword: "請輸入搜尋關鍵字。",
        noRecipesFound: "找不到符合的食譜。",
        searchError: "發生錯誤，請稍後再試。",
        recognizing: "圖片正在辨識中，請稍候...",
        recognitionResult: "辨識結果",
        recognitionError: "辨識過程出現錯誤:",
        recognitionFailed: "辨識失敗，請再試一次。",
        consoleError: "錯誤:",
        confirmUpload: "確認上傳",
        cancelUpload: "取消重新上傳",
        supportedFoodsTitle: "目前支援的 101 種食物",
        loadingFoods: "載入中...",
        language: "語言",
    },
    en: {
        pageTitle: "Deep Learning Recipe Recommendation System",
        searchPlaceholder: "Enter dish name: (get recipe ingredients & steps)",
        searchButton: "Search",
        uploadButton: "Upload Image to Recognize",
        previewTitle: "Image Preview:",
        previewAlt: "Preview Image",
        pleaseEnterKeyword: "Please enter a search keyword.",
        noRecipesFound: "No matching recipes found.",
        searchError: "An error occurred. Please try again later.",
        recognizing: "Image is being recognized, please wait...",
        recognitionResult: "Recognition Result",
        recognitionError: "Error during recognition:",
        recognitionFailed: "Recognition failed, please try again.",
        consoleError: "Error:",
        confirmUpload: "Confirm Upload",
        cancelUpload: "Cancel and Re-upload",
        supportedFoodsTitle: "101 Supported Foods",
        loadingFoods: "Loading...",
        language: "Language",
    }
};

// Current language (default to Traditional Chinese)
let currentLanguage = 'zh';

// Global translation helper function
function t(key) {
    return i18n[currentLanguage]?.[key] || i18n.zh[key] || key;
}

// Function to set language and update all UI text
function setLanguage(lang) {
    currentLanguage = lang;
    const t = i18n[lang];

    // Update page title
    document.getElementById("page-title").textContent = t.pageTitle;

    // Update search section
    document.getElementById("search-input").placeholder = t.searchPlaceholder;
    document.getElementById("search-button").textContent = t.searchButton;
    
    // Update upload button
    const uploadLabel = document.querySelector(".upload-label");
    if (uploadLabel) {
        uploadLabel.textContent = t.uploadButton;
    }

    // Update confirm/cancel buttons
    document.getElementById("confirm-upload").textContent = t.confirmUpload;
    document.getElementById("cancel-upload").textContent = t.cancelUpload;

    // Update supported foods title
    const foodsTitle = document.getElementById("supported-foods-title");
    if (foodsTitle) {
        foodsTitle.textContent = t.supportedFoodsTitle;
    }

    // Save language preference to localStorage
    localStorage.setItem('preferredLanguage', lang);

    // Update language toggle buttons
    updateLanguageToggleButtons();
}

// Update language toggle button states
function updateLanguageToggleButtons() {
    const zhBtn = document.getElementById("lang-zh");
    const enBtn = document.getElementById("lang-en");
    
    if (zhBtn && enBtn) {
        if (currentLanguage === 'zh') {
            zhBtn.classList.add("active");
            enBtn.classList.remove("active");
        } else {
            enBtn.classList.add("active");
            zhBtn.classList.remove("active");
        }
    }
}

// Load preferred language from localStorage on page load
function loadPreferredLanguage() {
    const savedLang = localStorage.getItem('preferredLanguage');
    if (savedLang && i18n[savedLang]) {
        setLanguage(savedLang);
    } else {
        setLanguage('zh'); // Default to Traditional Chinese
    }
}

// ============================================
// End of i18n Dictionary
// ============================================

// 搜尋功能
const searchInput = document.getElementById("search-input");
const searchButton = document.getElementById("search-button");
const searchResults = document.getElementById("search-results");

// 搜尋功能
searchButton.addEventListener("click", () => {
    const query = searchInput.value.trim();

    if (!query) {
        searchResults.innerHTML = `<p>${t("pleaseEnterKeyword")}</p>`;
        return;
    }

    // 呼叫 Flask /search API，帶上語言參數
    fetch(`/search?query=${encodeURIComponent(query)}&lang=${currentLanguage}`)
        .then(response => response.json())
        .then(data => {
            searchResults.innerHTML = ""; // 清空舊結果
            if (data.length === 0) {
                searchResults.innerHTML = `<p>${t("noRecipesFound")}</p>`;
                return;
            }

            // 顯示搜尋結果
            data.forEach(item => {
                const resultItem = document.createElement("p");
                // 根據當前語言顯示本地化標題（若資料庫有提供 title_zh）
                const label = (currentLanguage === 'zh' && item.title_zh) ? item.title_zh : item.title;
                resultItem.textContent = label;
                resultItem.style.cursor = "pointer";
                resultItem.style.color = "blue";

                // 點擊搜尋結果時，顯示詳細資訊
                resultItem.addEventListener("click", () => showRecipeDetails(item.title));
                searchResults.appendChild(resultItem);
            });
        })
        .catch(error => {
            console.error("Error:", error);
            searchResults.innerHTML = `<p>${t("searchError")}</p>`;
        });
});

function showRecipeDetails(title) {
    // 跳轉到新的頁面
    window.location.href = `/recipe_detail?title=${encodeURIComponent(title)}&lang=${currentLanguage}`;
}




// 取得 DOM 元素
const uploadInput = document.getElementById('upload-input');
const previewContainer = document.getElementById('image-preview');
const imageButtons = document.getElementById('image-buttons');
const confirmButton = document.getElementById('confirm-upload');
const cancelButton = document.getElementById('cancel-upload');
const resultsContainer = document.getElementById('transformer-results');

let uploadedFile = null;

// 當選擇圖片時
uploadInput.addEventListener('change', function (event) {
    uploadedFile = event.target.files[0];
    if (uploadedFile) {
        const reader = new FileReader();
        reader.onload = function (e) {
            previewContainer.innerHTML = `<p>${t("previewTitle")}:</p><img src="${e.target.result}" alt="${t("previewAlt")}" style="max-width: 100%;">`;
            imageButtons.style.display = "block";
        };
        reader.readAsDataURL(uploadedFile);
    } else {
        resetUpload();
    }
});

confirmButton.addEventListener('click', async function () {
    if (uploadedFile) {
        // 顯示辨識中訊息
        resultsContainer.innerHTML = `<p>${t("recognizing")}...</p>`;

        const formData = new FormData();
        formData.append("file", uploadedFile);

        try {
            const response = await fetch("/upload", {
                method: "POST",
                body: formData
            });
        
            if (!response.ok) throw new Error(t("recognitionFailed"));
        
            const result = await response.json();
        
            // 顯示結果
            resultsContainer.innerHTML = `
    <h3>${t("recognitionResult")}</h3>
    <p><a href="/recipe_detail?title=${encodeURIComponent(result.swin_prediction)}&lang=${currentLanguage}" target="_blank">${result.swin_prediction}</a></p>
`;

        } catch (error) {
            console.error("錯誤:", error); // 打印整個錯誤對象以獲取更多信息
            resultsContainer.innerHTML = `<p>${t("recognitionError")}: ${error.message}</p>`;
        }
        
        
    }
});



// 點擊「取消重新上傳」按鈕
cancelButton.addEventListener('click', function () {
    resetUpload();
});

// 重置上傳功能
function resetUpload() {
    uploadInput.value = "";
    previewContainer.innerHTML = "";
    imageButtons.style.display = "none";
    uploadedFile = null;
}

// ============================================
// 載入支援的食物列表
// ============================================
async function loadSupportedFoods() {
    const foodList = document.getElementById("food-list");
    const loadingMsg = document.getElementById("loading-foods");

    // 顯示載入中訊息
    if (loadingMsg) {
        loadingMsg.textContent = t("loadingFoods");
    }

    try {
        const response = await fetch(`/api/labels?lang=${currentLanguage}`);
        if (!response.ok) throw new Error("Failed to load labels");

        const labels = await response.json();

        // 清除載入訊息並顯示食物列表
        foodList.innerHTML = "";

        labels.forEach(label => {
            const foodItem = document.createElement("div");
            foodItem.className = "food-item";
            foodItem.textContent = label;
            foodList.appendChild(foodItem);
        });
    } catch (error) {
        console.error(t("consoleError"), error);
        foodList.innerHTML = `<p style="text-align: center; color: red;">${t("searchError")}</p>`;
    }
}

// ============================================
// 頁面載入完成後的初始化
// ============================================
document.addEventListener("DOMContentLoaded", () => {
    // 載入使用者偏好的語言
    loadPreferredLanguage();

    // 載入支援的食物列表
    loadSupportedFoods();
});


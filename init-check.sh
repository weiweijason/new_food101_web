#!/bin/bash
# 資料庫初始化檢查腳本
# 在 SQL 檔案匯入後執行，驗證 INSERT 數量

echo "========================================"
echo "開始驗證資料庫匯入結果..."
echo "========================================"

# 等待 MySQL 就緒
until mysql -u root -pweiwei2003921124 -e "SELECT 1" > /dev/null 2>&1; do
    echo "等待 MySQL 就緒..."
    sleep 1
done

echo "MySQL 已就緒，開始檢查..."

# 檢查 dhr 表的記錄數
DHR_COUNT=$(mysql -u root -pweiwei2003921124 food_recipe -N -e "SELECT COUNT(*) FROM dhr;")
echo "✓ dhr 表記錄數: $DHR_COUNT"

# 檢查 hr 表的記錄數
HR_COUNT=$(mysql -u root -pweiwei2003921124 food_recipe -N -e "SELECT COUNT(*) FROM hr;")
echo "✓ hr 表記錄數: $HR_COUNT"

# 檢查 nr 表的記錄數
NR_COUNT=$(mysql -u root -pweiwei2003921124 food_recipe -N -e "SELECT COUNT(*) FROM nr;")
echo "✓ nr 表記錄數: $NR_COUNT"

echo "========================================"
echo "匯入驗證完成！"
echo "========================================"
echo "預期數量:"
echo "  - dhr: 101 筆"
echo "  - hr:  約 50-60 筆 (僅健康食譜)"
echo "  - nr:  101 筆"
echo ""
echo "實際數量:"
echo "  - dhr: $DHR_COUNT 筆"
echo "  - hr:  $HR_COUNT 筆"
echo "  - nr:  $NR_COUNT 筆"
echo "========================================"

# 驗證結果
if [ "$NR_COUNT" -eq 101 ] && [ "$DHR_COUNT" -eq 101 ]; then
    echo "✓ 所有資料表匯入成功！"
    exit 0
else
    echo "✗ 警告: 某些資料表匯入數量不符！"
    if [ "$NR_COUNT" -ne 101 ]; then
        echo "  - nr 表預期 101 筆，實際 $NR_COUNT 筆"
    fi
    if [ "$DHR_COUNT" -ne 101 ]; then
        echo "  - dhr 表預期 101 筆，實際 $DHR_COUNT 筆"
    fi
    exit 1
fi

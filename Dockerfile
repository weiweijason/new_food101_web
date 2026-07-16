FROM python:3.11-slim

WORKDIR /app

# 安裝系統依賴（PIL 需要的圖像處理庫）
RUN apt-get update && apt-get install -y \
    libgl1 \
    libglx-mesa0 \
    libglib2.0-0 \
    libgomp1 \
    && rm -rf /var/lib/apt/lists/*

RUN --mount=type=cache,target=/var/cache/apt,sharing=locked \
    --mount=type=cache,target=/var/lib/apt,sharing=locked \
    --mount=type=secret,id=GIT_AUTH_TOKEN <<EOF
    REPO="NCCU-Zenbo/Zenbo"
    FILENAME="swin_model_disb.pth"
    VERSION="tags/recipe-v1.0.0"
    TARGET_PATH="/app/models/$FILENAME"
    if [ -z $(cat /run/secrets/GIT_AUTH_TOKEN) ]; then
        echo "\033[31mError: GIT_AUTH_TOKEN is missing or empty\033[0m" >&2
        exit 1
    fi
    apt-get update
    apt-get install -y --no-install-recommends jq curl
    asset_id=$(curl -H "Authorization: token $(cat /run/secrets/GIT_AUTH_TOKEN)" \
        -H "Accept: application/vnd.github.v3+json" \
        -s https://api.github.com/repos/$REPO/releases/$VERSION | \
        jq -r ".assets | map(select(.name == \"$FILENAME\"))[0].id")
    if [ -z "$asset_id" ] || [ "$asset_id" = "null" ]; then
        echo "ERROR: file $FILENAME not found in version $VERSION" >&2
        exit 1
    fi
    echo "Downloading $FILENAME from GitHub..."
    mkdir -p $(realpath $(dirname "$TARGET_PATH"))
    runuser -P -l nonroot -c "curl -L --header 'Accept: application/octet-stream' \
        -H 'Authorization: Bearer $(cat /run/secrets/GIT_AUTH_TOKEN)' \
        -o '${TARGET_PATH}' \
        'https://api.github.com/repos/$REPO/releases/assets/$asset_id'"
    apt-get purge -y jq curl && apt-get autopurge -y
EOF

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

# 建立模型目錄
RUN mkdir -p models

CMD ["python", "app.py"]

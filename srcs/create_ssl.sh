#!/bin/bash

# エラーが発生した場合にスクリプトを停止
set -e

# SSLディレクトリのパスを定義
SSL_DIR="../srcs/requirements/nginx/conf/ssl"

# ディレクトリを作成
mkdir -p "$SSL_DIR"

# ディレクトリに移動
cd "$SSL_DIR"

# SSL証明書と秘密鍵の生成
openssl req -x509 -nodes -days 365 \
    -newkey rsa:2048 \
    -subj "/C=JP/ST=Tokyo/L=Shibuya/O=42/OU=Student/CN=smizuoch.42.fr" \
    -keyout smizuoch.42.fr.key \
    -out smizuoch.42.fr.crt

echo "SSL証明書と秘密鍵が $SSL_DIR に生成されました。"

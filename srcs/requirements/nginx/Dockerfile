# Dockerfile (nginx用)
# Alpine または Debian (latest不可) を使用
# ここでは例として Alpine を使用し、バージョンを指定
FROM debian:bullseye

# パッケージインストール: NGINX, opensslなど
RUN ["/bin/bash", "-c", "apt update && apt install -y nginx  procps openssl"]

# /etc/nginx などに設定ファイルを配置する準備
# ディレクトリを作っておく
RUN mkdir -p /etc/nginx/conf.d /etc/nginx/ssl /var/www/html

# メイン設定ファイル (nginx.conf) をコンテナにコピー
COPY conf/nginx.conf /etc/nginx/nginx.conf

# (もしSSL証明書と鍵ファイルをDockerfileビルド時にコピーするなら)
# COPY conf/ssl/wil.42.fr.crt /etc/nginx/ssl/wil.42.fr.crt
# COPY conf/ssl/wil.42.fr.key /etc/nginx/ssl/wil.42.fr.key

# NGINXをフォアグラウンドで起動するためのコマンドを指定
CMD ["nginx", "-g", "daemon off;"]

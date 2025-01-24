NAME = inception

all:
	docker compose -f srcs/docker-compose.yml up --build -d

# 停止＋コンテナ削除
down:
	docker compose -f srcs/docker-compose.yml down

# 停止＋コンテナ、イメージ、ボリューム、ネットワーク全削除
fclean:
	docker compose -f srcs/docker-compose.yml down --rmi all -v

re: fclean all

.PHONY: all down fclean re

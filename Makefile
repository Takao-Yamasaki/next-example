.PHONY: web app help
.DEFAULT_GOAL := help
init: ## 初期化
	docker compose exec -it app npx create-next-app@latest
ps: ## appコンテナを起動
	docker compose ps
up: ## appコンテナを起動
	docker compose up app -d
login: ## appコンテナにログイン
	docker compose exec -it app sh
logs: ## appコンテナのログを表示
	docker compose logs app
rebuild: ## appコンテナを再起動
	docker compose up app -d --build
down: ## appコンテナを停止
	docker compose down
help: ## ヘルプを表示
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'

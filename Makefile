.PHONY: web app help
.DEFAULT_GOAL := help
app: ## appコンテナを起動
	docker compose up app
down: ## appコンテナを停止
	docker compose down
help: ## ヘルプを表示
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'

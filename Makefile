#!make
include .deployment/infra/Makefile
include .deployment/services/Makefile

.PHONY: help
help: ## Показать список всех доступных команд для каждого Make-файла
	@echo "Доступные команды:"
	@echo ""
	@for makefile in $(MAKEFILE_LIST); do \
		if [ "$$makefile" != ".env" ]; then \
			echo "Файл: $$makefile"; \
			grep -E '^[a-zA-Z_-]+:.*?## .*$$' $$makefile | awk 'BEGIN {FS = ":.*?## "}; {printf "  \033[36m%-30s\033[0m %s\n", $$1, $$2}'; \
			echo ""; \
		fi; \
	done

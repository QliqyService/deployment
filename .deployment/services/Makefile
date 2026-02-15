#!make
# LOAD .env
define load_env
    $(eval include .env)
    $(eval export)
endef

#AUTH
pull-auth: ## 🔄 Qliqy Auth
	$(call load_env)
	@docker compose -f .deployment/services/docker-compose.auth.yaml pull
up-auth: ## 🟢 Qliqy Auth
	$(call load_env)
	@docker compose -f .deployment/services/docker-compose.auth.yaml up -d
down-auth: ## 🔴 Qliqy Auth
	$(call load_env)
	@docker compose -f .deployment/services/docker-compose.auth.yaml down
rebuild-auth: $(call load_env) down-auth pull-auth up-auth ## 🔥 Qliqy Auth

#QRCODE_GENERATOR
pull-qrcode-generator: ## 🔄 QR-Code Generator
	$(call load_env)
	@docker compose -f .deployment/services/docker-compose.qrcode-generator.yaml pull
up-qrcode-generator: ## 🟢 QR-Code Generator
	$(call load_env)
	@docker compose -f .deployment/services/docker-compose.qrcode-generator.yaml up -d
down-qrcode-generator: ## 🔴 QR-Code Generator
	$(call load_env)
	@docker compose -f .deployment/services/docker-compose.qrcode-generator.yaml down
rebuild-qrcode-generator: $(call load_env) down-qrcode-generator pull-qrcode-generator up-qrcode-generator ## 🔥 QR-Code Generator

#WEBAPI
pull-webapi: ## 🔄 Qliqy WebAPI
	$(call load_env)
	@docker compose -f .deployment/services/docker-compose.webapi.yaml pull
up-webapi: ## 🟢 Qliqy WebAPI
	$(call load_env)
	@docker compose -f .deployment/services/docker-compose.webapi.yaml up -d
down-webapi: ## 🔴 Qliqy WebAPI
	$(call load_env)
	@docker compose -f .deployment/services/docker-compose.webapi.yaml down
rebuild-webapi: $(call load_env) down-webapi pull-webapi up-webapi ## 🔥 Qliqy WebAPI

#TELEGRAM
pull-telegram: ## 🔄 Qliqy Telegram
	$(call load_env)
	@docker compose -f .deployment/services/docker-compose.telegram.yaml pull
up-telegram: ## 🟢 Qliqy Telegram
	$(call load_env)
	@docker compose -f .deployment/services/docker-compose.telegram.yaml up -d
down-telegram: ## 🔴 Qliqy Telegram
	$(call load_env)
	@docker compose -f .deployment/services/docker-compose.telegram.yaml down
rebuild-telegram: $(call load_env) down-telegram pull-telegram up-telegram ## 🔥 Qliqy Telegram

#MAIL
pull-mail: ## 🔄 Qliqy Mail
	$(call load_env)
	@docker compose -f .deployment/services/docker-compose.mail.yaml pull
up-mail: ## 🟢 Qliqy Mail
	$(call load_env)
	@docker compose -f .deployment/services/docker-compose.mail.yaml up -d
down-mail: ## 🔴 Qliqy Mail
	$(call load_env)
	@docker compose -f .deployment/services/docker-compose.mail.yaml down
rebuild-mail: $(call load_env) down-mail pull-mail up-mail ## 🔥 Qliqy Mail

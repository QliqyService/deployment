#!make
# LOAD .env
define load_env
    $(eval include .env)
    $(eval export)
endef

up-rabbitmq: ## 🟢 RabbitMQ
	$(call load_env)
	@docker compose -f .deployment/infra/docker-compose.rabbitmq.yaml up -d
down-rabbitmq: ## 🔴 RabbitMQ
	$(call load_env)
	@docker compose -f .deployment/infra/docker-compose.rabbitmq.yaml down

up-postgres: ## 🟢 PostgreSQL
	$(call load_env)
	@docker compose -f .deployment/infra/docker-compose.postgres.yaml up -d
down-postgres: ## 🔴 PostgreSQL
	$(call load_env)
	@docker compose -f .deployment/infra/docker-compose.postgres.yaml down

up-redis: ## 🟢 Redis
	$(call load_env)
	@docker compose -f .deployment/infra/docker-compose.redis.yaml up -d
down-redis: ## 🔴 Redis
	$(call load_env)
	@docker compose -f .deployment/infra/docker-compose.redis.yaml down

up-traefik: ## 🟢 Traefik
	$(call load_env)
	@docker compose -f .deployment/infra/docker-compose.traefik.yaml up -d
down-traefik: ## 🔴 Traefik
	$(call load_env)
	@docker compose -f .deployment/infra/docker-compose.traefik.yaml down

up-infra: up-rabbitmq up-postgres ## 🟢 Сервисы инфраструктуры
down-infra: down-postgres down-rabbitmq ## 🔴 Сервисы инфраструктуры

# NETWORKS
up-traefik-net: ## 🟢 Сеть для Traefik (traefik-network)
	@docker network create --driver=bridge traefik-network || true
up-qliqy-net: ## 🟢 Сеть для инфраструктуры (qliqy-network)
	@docker network create --driver=bridge qliqy-network || true
up-nets: up-traefik-net up-qliqy-net  ## 🟢 Все сети

# Qliqy Deployment

![Docker Compose](https://img.shields.io/badge/deploy-docker%20compose-1d63ed)
![Status](https://img.shields.io/badge/status-active%20development-b4492f)

Deployment configuration for the Qliqy platform.

## What It Does

- defines compose-based deployment for all application services
- connects application containers with PostgreSQL, RabbitMQ, Redis, MinIO, and reverse proxy infrastructure
- acts as the operational entry point for deployment and rebuild workflows

## How It Works

This directory does not implement business logic. It wires together the platform runtime:

- `auth`
- `webapi`
- `frontend`
- `telegram`
- `mailer`
- `qrcode_generator`

## Product Note

Public registration is intentionally disabled while the product is still being stabilized and validated.

Test account:

```json
{
  "email": "admin@admin.com",
  "first_name": "John",
  "last_name": "Doe",
  "password": "admin123"
}
```

- Developer: Ilia Fedorenko
- Developer: Ernest Berezin

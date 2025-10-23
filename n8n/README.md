# n8n

Workflow automation platform with visual interface.

## Services

- **n8n**: Automation engine
- **PostgreSQL 16**: Database

## Ports

- **5678**: n8n web interface
- **5432**: PostgreSQL (optional, only for external access)

## Start

```bash
docker-compose up -d
```

## Access

n8n interface: http://localhost:5678

## Important Data

- **n8n_data/**: Workflows and configurations (not versioned in git)
- **postgres_data/**: Database (not versioned in git)
- **N8N_ENCRYPTION_KEY**: Change in docker-compose.yml for production

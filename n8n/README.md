# n8n

Plataforma de automatización de workflows con interfaz visual.

## Servicios

- **n8n**: Motor de automatización
- **PostgreSQL 16**: Base de datos

## Puertos

- **5678**: Interfaz web de n8n
- **5432**: PostgreSQL (opcional, solo para acceso externo)

## Inicio

```bash
docker-compose up -d
```

## Acceso

Interfaz de n8n: http://localhost:5678

## Datos importantes

- **n8n_data/**: Workflows y configuraciones (no versionado en git)
- **postgres_data/**: Base de datos (no versionado en git)
- **N8N_ENCRYPTION_KEY**: Cambiar en docker-compose.yml para producción

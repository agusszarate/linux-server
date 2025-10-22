# Nginx Proxy Manager

Servidor proxy reverso con gestión de certificados SSL/TLS automática.

## Puertos

- **80**: HTTP (tráfico web)
- **443**: HTTPS (tráfico web seguro)
- **81**: Panel de administración de NPM

## Inicio

```bash
docker-compose up -d
```

## Acceso

Panel de administración: http://localhost:81

**Credenciales por defecto:**
- Email: admin@example.com
- Password: changeme

**IMPORTANTE**: Cambiar las credenciales en el primer inicio.

## Función

Gestiona el acceso a todos los servicios internos mediante dominios y genera certificados SSL automáticamente con Let's Encrypt.

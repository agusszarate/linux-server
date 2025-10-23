# Nginx Proxy Manager

Reverse proxy server with automatic SSL/TLS certificate management.

## Ports

- **80**: HTTP (web traffic)
- **443**: HTTPS (secure web traffic)
- **81**: NPM admin panel

## Start

```bash
docker-compose up -d
```

## Access

Admin panel: http://localhost:81

**Default credentials:**

- Email: admin@example.com
- Password: changeme

**IMPORTANT**: Change credentials on first login.

## Function

Manages access to all internal services through domains and automatically generates SSL certificates with Let's Encrypt.

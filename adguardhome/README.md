# AdGuard Home

Servidor DNS que bloquea anuncios y rastreadores a nivel de red.

## Puertos

- **53/TCP y UDP**: DNS server
- **8081/TCP**: Panel de administración web

## Inicio

```bash
docker-compose up -d
```

## Acceso

Panel de administración: http://localhost:8081

## Configuración DNS

Configura los dispositivos de tu red para usar la IP del servidor como DNS principal.

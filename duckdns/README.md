# DuckDNS

Servicio de DNS dinámico que mantiene actualizada la dirección IP del servidor.

## Configuración

- **Dominio**: agus-server.duckdns.org
- **Script**: `duck.sh` actualiza la IP automáticamente

## Uso

```bash
./duck.sh
```

## Automatización

Agregar a crontab para ejecutar cada 5 minutos:
```
*/5 * * * * /path/to/duckdns/duck.sh
```

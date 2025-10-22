# OpenVPN Server

Servidor VPN para acceso remoto seguro a la red local.

## Puertos

- **1194/UDP**: Puerto estándar de OpenVPN

## Inicio

```bash
docker-compose up -d
```

## Archivos de configuración

- **openvpn-data/**: Datos y certificados del servidor
- **macbook.ovpn**: Configuración de cliente (no versionada en git)

## Generar nuevo cliente

```bash
docker exec -it openvpn ovpn_getclient CLIENTNAME > CLIENTNAME.ovpn
```

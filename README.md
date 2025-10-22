# Linux Server - Configuración de Servicios

Configuración completa de un servidor Linux con servicios Docker para uso personal.

## Servicios Incluidos

### 🌐 [Nginx Proxy Manager](nginx-proxy-manager/)
Proxy reverso con gestión automática de certificados SSL/TLS.
- Puertos: 80, 443, 81 (admin)
- Panel: http://localhost:81

### 🔒 [OpenVPN Server](openvpn-server/)
Servidor VPN para acceso remoto seguro.
- Puerto: 1194/UDP
- Generación de clientes incluida

### 🛡️ [AdGuard Home](adguardhome/)
Bloqueador de anuncios y rastreadores a nivel DNS.
- Puerto DNS: 53
- Panel: http://localhost:8081

### 🤖 [n8n](n8n/)
Plataforma de automatización de workflows.
- Puerto: 5678
- Interfaz: http://localhost:5678
- Base de datos: PostgreSQL 16

### 🦆 [DuckDNS](duckdns/)
DNS dinámico para mantener actualizada la IP del servidor.
- Dominio: agus-server.duckdns.org

## Inicio Rápido

### Iniciar todos los servicios

```bash
# Iniciar Nginx Proxy Manager
cd nginx-proxy-manager && docker-compose up -d

# Iniciar OpenVPN
cd ../openvpn-server && docker-compose up -d

# Iniciar AdGuard Home
cd ../adguardhome && docker-compose up -d

# Iniciar n8n
cd ../n8n && docker-compose up -d
```

### Detener todos los servicios

```bash
docker-compose -f nginx-proxy-manager/docker-compose.yml down
docker-compose -f openvpn-server/docker-compose.yml down
docker-compose -f adguardhome/docker-compose.yml down
docker-compose -f n8n/docker-compose.yml down
```

## Configuración Inicial

1. **Nginx Proxy Manager**: Cambiar credenciales por defecto
2. **AdGuard Home**: Configurar filtros y lista de bloqueo
3. **n8n**: Cambiar `N8N_ENCRYPTION_KEY` en producción
4. **DuckDNS**: Agregar `duck.sh` a crontab para actualización automática

## Puertos Utilizados

| Puerto | Servicio | Protocolo | Descripción |
|--------|----------|-----------|-------------|
| 80 | NPM | TCP | HTTP |
| 443 | NPM | TCP | HTTPS |
| 81 | NPM | TCP | Admin Panel |
| 53 | AdGuard | TCP/UDP | DNS |
| 8081 | AdGuard | TCP | Admin Panel |
| 1194 | OpenVPN | UDP | VPN |
| 5678 | n8n | TCP | Web Interface |
| 5432 | PostgreSQL | TCP | Database (n8n) |

## Estructura del Proyecto

```
linux-server/
├── nginx-proxy-manager/    # Proxy reverso y SSL
├── openvpn-server/         # Servidor VPN
├── adguardhome/            # DNS ad-blocker
├── n8n/                    # Automatización
└── duckdns/                # DNS dinámico
```

## Notas de Seguridad

- Cambiar todas las credenciales por defecto
- Revisar y actualizar el archivo `.gitignore` para no versionar datos sensibles
- Configurar firewall para exponer solo los puertos necesarios
- Mantener los contenedores actualizados regularmente

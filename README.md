# Linux Server - Services Configuration

Complete configuration of a Linux server with Docker services for personal use.

## Included Services

### 🌐 [Nginx Proxy Manager](nginx-proxy-manager/)

Reverse proxy with automatic SSL/TLS certificate management.

- Ports: 80, 443, 81 (admin)
- Panel: http://localhost:81

### 🔒 [OpenVPN Server](openvpn-server/)

VPN server for secure remote access.

- Port: 1194/UDP
- Client generation included

### 🛡️ [AdGuard Home](adguardhome/)

DNS-level ad and tracker blocker.

- DNS Port: 53
- Panel: http://localhost:8081

### 🤖 [n8n](n8n/)

Workflow automation platform.

- Port: 5678
- Interface: http://localhost:5678
- Database: PostgreSQL 16

### 🦆 [DuckDNS](duckdns/)

Dynamic DNS to keep the server IP updated.

- Domain: agus-server.duckdns.org

### 📊 [Glances](glances/)

Real-time system resource monitoring with web interface.

- Port: 61208
- Interface: http://localhost:61208

### 🏠 [Homepage](homepage/)

Modern dashboard for organizing all your services in one place.

- Port: 3000
- Interface: http://localhost:3000
- Docker integration enabled

## Quick Start

### Start all services

```bash
# Start Nginx Proxy Manager
cd nginx-proxy-manager && docker-compose up -d

# Start OpenVPN
cd ../openvpn-server && docker-compose up -d

# Start AdGuard Home
cd ../adguardhome && docker-compose up -d

# Start n8n
cd ../n8n && docker-compose up -d

# Start Glances
cd ../glances && docker-compose up -d

# Start Homepage
cd ../homepage && docker-compose up -d
```

### Stop all services

```bash
docker-compose -f nginx-proxy-manager/docker-compose.yml down
docker-compose -f openvpn-server/docker-compose.yml down
docker-compose -f adguardhome/docker-compose.yml down
docker-compose -f n8n/docker-compose.yml down
docker-compose -f glances/docker-compose.yml down
docker-compose -f homepage/docker-compose.yml down
```

## Initial Setup

1. **Nginx Proxy Manager**: Change default credentials
2. **AdGuard Home**: Configure filters and blocklists
3. **n8n**: Change `N8N_ENCRYPTION_KEY` in production
4. **DuckDNS**: Add `duck.sh` to crontab for automatic updates

## Ports in Use

| Port  | Service    | Protocol | Description          |
| ----- | ---------- | -------- | -------------------- |
| 80    | NPM        | TCP      | HTTP                 |
| 443   | NPM        | TCP      | HTTPS                |
| 81    | NPM        | TCP      | Admin Panel          |
| 53    | AdGuard    | TCP/UDP  | DNS                  |
| 8081  | AdGuard    | TCP      | Admin Panel          |
| 1194  | OpenVPN    | UDP      | VPN                  |
| 5678  | n8n        | TCP      | Web Interface        |
| 5432  | PostgreSQL | TCP      | Database (n8n)       |
| 61208 | Glances    | TCP      | Monitoring Interface |
| 3000  | Homepage   | TCP      | Dashboard            |

## Project Structure

```
linux-server/
├── nginx-proxy-manager/    # Reverse proxy and SSL
├── openvpn-server/         # VPN server
├── adguardhome/            # DNS ad-blocker
├── n8n/                    # Automation
├── duckdns/                # Dynamic DNS
├── glances/                # System monitoring
└── homepage/               # Services dashboard
```

## Security Notes

- Change all default credentials
- Review and update `.gitignore` to avoid versioning sensitive data
- Configure firewall to expose only necessary ports
- Keep containers updated regularly

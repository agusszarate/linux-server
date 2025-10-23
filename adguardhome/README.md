# AdGuard Home

DNS server that blocks ads and trackers at the network level.

## Ports

- **53/TCP and UDP**: DNS server
- **8081/TCP**: Web admin panel

## Start

```bash
docker-compose up -d
```

## Access

Admin panel: http://localhost:8081

## DNS Configuration

Configure your network devices to use the server IP as the primary DNS.

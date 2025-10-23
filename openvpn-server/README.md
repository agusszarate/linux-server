# OpenVPN Server

VPN server for secure remote access to the local network.

## Ports

- **1194/UDP**: OpenVPN standard port

## Start

```bash
docker-compose up -d
```

## Configuration Files

- **openvpn-data/**: Server data and certificates
- **macbook.ovpn**: Client configuration (not versioned in git)

## Generate New Client

```bash
docker exec -it openvpn ovpn_getclient CLIENTNAME > CLIENTNAME.ovpn
```

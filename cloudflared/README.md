# Cloudflared

Cloudflare Tunnel client to securely expose your local services to the internet without opening ports.

## Features

- **Zero Trust Access**: Secure access without exposing ports
- **Automatic HTTPS**: SSL certificates managed by Cloudflare
- **DDoS Protection**: Cloudflare's network protection
- **No Public IP Required**: Works behind NAT/firewalls

## Setup

### 1. Create a Cloudflare Tunnel

1. Log in to [Cloudflare Zero Trust](https://one.dash.cloudflare.com/)
2. Go to **Networks** → **Tunnels**
3. Click **Create a tunnel**
4. Choose **Cloudflared** as the connector
5. Name your tunnel (e.g., `home-server`)
6. Copy the tunnel token

### 2. Configure Environment Variables

1. Copy the example file:

   ```bash
   cp .env.example .env
   ```

2. Edit `.env` and add your tunnel token:
   ```bash
   nano .env
   ```

### 3. Configure Public Hostnames

In the Cloudflare dashboard, add public hostnames for your services:

**Example configurations:**

- **Subdomain**: `n8n.yourdomain.com`
  - Service: `http://n8n:5678`
- **Subdomain**: `drone.yourdomain.com`
  - Service: `http://drone_server:80`
- **Subdomain**: `adguard.yourdomain.com`
  - Service: `http://adguard:80`

### 4. Start Cloudflared

```bash
docker-compose up -d
```

## Configuration

The tunnel token is stored in the `.env` file:

- `CLOUDFLARE_TUNNEL_TOKEN`: Your tunnel token from Cloudflare

## Usage

Once running, your services will be accessible via the public hostnames you configured in Cloudflare, with automatic HTTPS.

## Benefits

- No need to open ports on your router
- Automatic SSL/TLS certificates
- DDoS protection from Cloudflare
- Access control and authentication options
- Traffic analytics

## Security Notes

- **Never commit `.env`** - It contains your tunnel token!
- The `.env.example` file is safe to commit
- Use Cloudflare Access policies to restrict who can access your services
- Enable additional security features in Cloudflare dashboard

## Troubleshooting

### Tunnel not connecting

Check that your tunnel token is correct in `.env`.

### Service not accessible

Verify that the service URL in Cloudflare matches your Docker service name and port.

### Check tunnel status

```bash
docker logs cloudflared
```

## Documentation

For more information: https://developers.cloudflare.com/cloudflare-one/connections/connect-apps/

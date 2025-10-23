# Homepage

Modern and customizable dashboard for organizing all your services in one place.

## Features

- **Unified Dashboard**: Access all your services from a single interface
- **Docker Integration**: Automatically detects and displays running containers
- **Customizable Widgets**: Add bookmarks, services, and monitoring widgets
- **Responsive Design**: Works on desktop and mobile devices

## Ports

- **3000/TCP**: Homepage web interface

## Start

```bash
docker-compose up -d
```

## Access

Web interface: http://localhost:3000

## Configuration

Configuration files are stored in the `./config` directory:

- **services.yaml**: Define your services and links
- **widgets.yaml**: Configure dashboard widgets
- **bookmarks.yaml**: Add your favorite links
- **settings.yaml**: General dashboard settings

## Docker Integration

Homepage has read-only access to the Docker socket, allowing it to:

- Display running containers
- Show container status
- Monitor resource usage

## Example Configuration

Create or edit `config/services.yaml` to add your services:

```yaml
- Server:
    - n8n:
        href: http://localhost:5678
        description: Workflow automation
        icon: n8n.png
    - AdGuard Home:
        href: http://localhost:8081
        description: DNS ad blocker
        icon: adguard-home.png
    - Nginx Proxy Manager:
        href: http://localhost:81
        description: Reverse proxy
        icon: nginx-proxy-manager.png
    - Glances:
        href: http://localhost:61208
        description: System monitoring
        icon: glances.png
```

## Documentation

For more information about configuration options, visit:
https://gethomepage.dev/

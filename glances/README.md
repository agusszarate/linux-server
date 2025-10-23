# Glances

Real-time system resource monitoring system.

## Features

- **Complete monitoring**: CPU, memory, disk, network, processes
- **Docker integration**: Visualize containers and their resources
- **Web interface**: Browser access
- **Real-time**: Automatic metric updates

## Access

- **URL**: http://localhost:61208
- **Port**: 61208

## Configuration

The service is configured with:

- Access to Docker socket for container monitoring
- Host PID namespace to see all processes
- Root permissions (GID=0) for full metric access

## Usage

Access the web interface at http://localhost:61208 to view:

- General system status
- Active processes
- Docker containers
- Network and disk usage
- Automatic alerts

# Drone CI

Continuous Integration and Delivery platform with native container support.

## Features

- **GitHub Integration**: Automatic build triggers on push/PR
- **Docker-based**: Build and test in isolated containers
- **Pipeline as Code**: Define CI/CD in `.drone.yml`
- **Self-hosted**: Complete control over your CI/CD environment

## Ports

- **8080/TCP**: Drone web interface
- **9000/TCP**: Runner communication port

## Setup

### 1. Create GitHub OAuth Application

1. Go to https://github.com/settings/developers
2. Click "New OAuth App"
3. Fill in the details:
   - **Application name**: `Drone CI`
   - **Homepage URL**: `http://agus-server.duckdns.org:8080`
   - **Authorization callback URL**: `http://agus-server.duckdns.org:8080/login`
4. Save the `Client ID` and `Client Secret`

### 2. Configure Environment Variables

1. Copy the example file:

   ```bash
   cp .env.example .env
   ```

2. Edit `.env` and fill in your values:

   ```bash
   nano .env
   ```

3. Generate a secure RPC secret:
   ```bash
   openssl rand -hex 16
   ```

### 3. Start Drone

```bash
docker-compose up -d
```

### 4. Access Drone

Open http://localhost:8080 (or your configured domain) and log in with GitHub.

## Configuration

All sensitive configuration is stored in the `.env` file:

- `DRONE_GITHUB_CLIENT_ID`: GitHub OAuth Client ID
- `DRONE_GITHUB_CLIENT_SECRET`: GitHub OAuth Client Secret
- `DRONE_RPC_SECRET`: Secure secret for server-runner communication
- `DRONE_SERVER_HOST`: Your server hostname
- `DRONE_SERVER_PROTO`: Protocol (http or https)
- `DRONE_ADMIN_USERNAME`: Your GitHub username (admin access)

## Usage

### Activate a Repository

1. Log in to Drone
2. Click "Sync" to refresh your repositories
3. Find your repository and click "Activate"
4. Add a `.drone.yml` file to your repository

### Example Pipeline

Create `.drone.yml` in your repository:

```yaml
kind: pipeline
type: docker
name: default

steps:
  - name: test
    image: node:18
    commands:
      - npm install
      - npm test

  - name: build
    image: node:18
    commands:
      - npm run build
```

## Security Notes

- **Never commit `.env`** - It contains secrets!
- The `.env.example` file is safe to commit
- Change `DRONE_SERVER_PROTO` to `https` when using SSL
- Keep your RPC secret secure and unique

## Troubleshooting

### Runner not connecting

Check that `DRONE_RPC_SECRET` matches in both server and runner.

### GitHub login fails

Verify your OAuth application callback URL matches exactly.

### Builds not triggering

Ensure the repository is activated in Drone and webhooks are configured in GitHub.

## Documentation

For more information: https://docs.drone.io/

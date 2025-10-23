# DuckDNS

Dynamic DNS service that keeps the server IP address updated.

## Configuration

- **Domain**: agus-server.duckdns.org
- **Script**: `duck.sh` automatically updates the IP

## Usage

```bash
./duck.sh
```

## Automation

Add to crontab to run every 5 minutes:

```
*/5 * * * * /path/to/duckdns/duck.sh
```

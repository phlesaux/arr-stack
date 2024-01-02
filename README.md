
# Arr stack

## Quick setup

### Generate VPN Private Key

Generate a Token on https://my.nordaccount.com/dashboard/nordvpn/manual-configuration/
```
./generate-private-key.sh <TOKEN>
```

### Fill environment files

`cp .env.dist .env`
```
PUID=<PUID>
PGID=<PGID>
TZ=Europe/Paris
```

`cp .env.vpn.dist .env.vpn`
```
COUNTRY_CODE=FR
PRIVATE_KEY=<PRIVATE_KEY>
NET_LOCAL=192.168.0.0/16
```

### Run

`docker-compose up -d`


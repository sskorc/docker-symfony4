# Symfony + Docker boilerplate

This is a simple Docker configuration for Symfony

Clone repo and run:
```
docker-compose up -d
```

When done, create Symfony project in the container. Symfony files will appear at your host in the project directory.
```
docker-compose exec php bash
symfony new app --no-git
```

## xdebug configuration with PhpStorm

xdebug is installed in the container and configured with the file `xdebug.ini`:
```
xdebug.remote_enable=1
xdebug.remote_autostart=1
xdebug.remote_connect_back=off
xdebug.remote_host=docker.for.mac.localhost
xdebug.remote_port=9000
xdebug.idekey=PHPSTORM
xdebug.max_nesting_level=1500
```

Configure PhpStorm to support debugging:
1. in `Languages & Frameworks > PHP > Debug` set port `9000` for Xdebug
2. in `Languages & Frameworks > PHP > Server` create a new configuration (the name is up to you) with:
- host: localhost
- port: 8000
- debugger: Xdebug
- "Use path mappings" enabled
- your project main directory mapped to `/root/app`


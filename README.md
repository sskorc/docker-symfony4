# Symfony + Docker boilerplate

This is a simple Docker configuration for Symfony

Clone repo and run:
```
docker-compose up -d
```

When done, create Symfony project in the container. Symfony files will appear at your host in the project directory.
```
docker-compose exec php bash
symfony new my_project --no-git
```

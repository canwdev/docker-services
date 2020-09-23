# Nginx in Docker

reset nginx:

```
docker rm -f nginx && ./init.sh
```

reload nginx:

```
docker exec -it nginx nginx -s reload
```


# https://hub.docker.com/_/nginx
# -v $PWD/nginx.conf:/etc/nginx/nginx.conf:ro \
# -p 87:80 \
docker run -d --name some-nginx \
--net=host \
-v $PWD/www:/usr/share/nginx/html:ro \
nginx
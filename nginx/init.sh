# https://hub.docker.com/_/nginx
# --net=host \

docker run -d --restart=always --name nginx \
-p 80:80 \
-v $PWD/www:/www:ro \
-v $PWD/default.conf:/etc/nginx/conf.d/default.conf:ro \
nginx


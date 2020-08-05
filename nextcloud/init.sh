docker run -d --restart=always \
--name nextcloud \
-p 3000:80 \
--link mysql:db \
-v $PWD/nextcloud:/var/www/html \
nextcloud

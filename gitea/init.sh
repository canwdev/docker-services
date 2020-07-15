docker run -d --name=gitea \
--link mysql:db \
-p 10022:22 -p 10080:3000 \
-v $PWD/gitea:/data \
-v /etc/timezone:/etc/timezone:ro \
-v /etc/localtime:/etc/localtime:ro \
gitea/gitea:latest

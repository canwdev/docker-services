docker run --restart=always --name mysql \
-p 3306:3306 \
-e MYSQL_ROOT_PASSWORD=root \
-v $PWD/data:/var/lib/mysql \
-v $PWD/my.cnf:/etc/my.cnf \
-v /etc/localtime:/etc/localtime:ro \
-d mysql/mysql-server:5.7.28  


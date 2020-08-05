# MySQL in Docker

参照 init.sh 文件：

- 默认端口号：3306
- root 用户的密码：root
- 配置文件会保存在当前目录下



## 常用命令

- 进入容器：`docker exec -it mysql bash`

- 登录数据库：`mysql -uroot -p`（输入密码）

- 修改数据库密码： `mysqladmin -u root -p password`


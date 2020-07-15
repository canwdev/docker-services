docker run -d --restart=always --name frps --net=host \
-v $PWD/frps.ini:/frp/frps.ini \
-v /etc/timezone:/etc/timezone:ro \
-v /etc/localtime:/etc/localtime:ro \
canwdev/frp \
/frp/frps -c /frp/frps.ini
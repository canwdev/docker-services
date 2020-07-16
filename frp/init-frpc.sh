docker run -d --restart=always --name frpc --net=host \
-v $PWD/frpc.ini:/frp/frpc.ini \
-v /etc/timezone:/etc/timezone:ro \
-v /etc/localtime:/etc/localtime:ro \
canwdev/frp \
/frp/frpc -c /frp/frpc.ini

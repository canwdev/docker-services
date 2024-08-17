```sh
docker rm -f dkvnc

docker run --restart=always --name dkvnc \
  --net=host \
  -d debian-kasm-vnc
```

vnc user: root
vnc password: debian
visit: https://192.168.56.xxx:8444/
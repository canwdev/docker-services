docker rm -f dkvnc

docker run --restart=always --name dkvnc \
  --net=host \
  -v $PWD/config-override/.vnc/kasmvnc.yaml:/root/.vnc/kasmvnc.yaml \
  -v $PWD/config-override/ssl:/root/ssl \
  -d debian-kasm-vnc

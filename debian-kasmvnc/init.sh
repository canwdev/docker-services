docker rm -f dkvnc

#  -v $PWD/config-override/.vnc/kasmvnc.yaml:/root/.vnc/kasmvnc.yaml \
#  -v $PWD/config-override/ssl:/root/ssl \

docker run --restart=always --name dkvnc \
  --net=host \
  -d debian-kasm-vnc

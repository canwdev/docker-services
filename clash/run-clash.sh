docker rm -f clash
docker run -d --name clash --restart always \
	--network host \
	-v ${PWD}/config:/root/.config/clash \
	-v ${PWD}/ui:/ui \
	dreamacro/clash

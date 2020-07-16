# https://github.com/cloverzrg/frps-docker
FROM alpine

ENV FRP_NAME frp_0.33.0_linux_amd64
ADD ${FRP_NAME}.tar.gz /frp/
WORKDIR /frp
RUN mv ./${FRP_NAME}/* ./ && rm -rf ${FRP_NAME}
# ENTRYPOINT ["./frps","-c","./frps.ini"]

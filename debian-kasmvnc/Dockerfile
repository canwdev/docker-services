# 使用官方的 Debian 12 基础镜像
FROM debian:12

# 设置环境变量，避免交互式提示
ENV DEBIAN_FRONTEND=noninteractive

# 更新包索引，并安装常用工具
RUN apt update && apt install -y \
  zsh vim neofetch htop tmux curl wget net-tools

# 安装桌面环境
RUN apt install -y xfce4 dbus-x11

RUN neofetch

# 安装 kasmvncserver
WORKDIR '/tmp'
RUN wget -O kasmvncserver.deb https://github.com/kasmtech/KasmVNC/releases/download/v1.3.1/kasmvncserver_bookworm_1.3.1_amd64.deb 
RUN apt install -y ./kasmvncserver.deb

# 安装常用软件
RUN apt install -y mousepad iproute2 xfce4-terminal

ADD ./app /app
RUN /app/setup-vnc.sh

# 使用脚本启动 VNC 服务器
CMD ["/app/start-vnc.sh"]

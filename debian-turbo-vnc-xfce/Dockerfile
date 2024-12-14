# 使用官方的 Debian 12 基础镜像
FROM debian:12

# 设置环境变量，避免交互式提示
ENV DEBIAN_FRONTEND=noninteractive

# 更新包索引，并安装常用工具
RUN apt update
RUN apt install -y \
  zsh vim neofetch htop tmux curl wget net-tools
RUN neofetch

# 安装桌面环境
RUN apt install -y xfce4 dbus-x11 x11-xserver-utils

# 安装常用软件
RUN apt install -y mousepad iproute2 xfce4-terminal

WORKDIR /app

# 安装 vncserver https://github.com/TurboVNC/turbovnc/
COPY scripts/turbovnc_3.1.3_amd64.deb /app
RUN apt install -y ./turbovnc_3.1.3_amd64.deb

RUN ln -s /opt/TurboVNC/bin/vncpasswd /usr/bin/vncpasswd
RUN ln -s /opt/TurboVNC/bin/vncserver /usr/bin/vncserver
RUN ln -s /opt/TurboVNC/bin/vncviewer /usr/bin/vncviewer
RUN ln -s /opt/TurboVNC/bin/tvncconfig /usr/bin/tvncconfig
RUN ln -s /opt/TurboVNC/bin/vncconnect /usr/bin/vncconnect
RUN ln -s /opt/TurboVNC/bin/Xvnc /usr/bin/Xvnc
RUN ln -s /opt/TurboVNC/bin/webserver /usr/bin/webserver
RUN ln -s /opt/TurboVNC/bin/xstartup.turbovnc /usr/bin/xstartup.turbovnc

# 设置 VNC 服务器配置
USER root
RUN mkdir -p /root/.vnc && \
    echo "password" | vncpasswd -f > /root/.vnc/passwd && \
    chmod 600 /root/.vnc/passwd && \
    echo "startxfce4 &" > /root/.vnc/xstartup && \
    chmod +x /root/.vnc/xstartup

# 暴露 VNC 端口
EXPOSE 5901
COPY scripts/start-vnc.sh /app

# 使用脚本启动 VNC 服务器
CMD ["/app/start-vnc.sh"]

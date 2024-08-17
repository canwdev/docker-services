#!/bin/bash
# 某一条命令失败后立即退出整个脚本
set -e

# 覆盖默认配置
cp /etc/kasmvnc/kasmvnc.yaml /etc/kasmvnc/kasmvnc.yaml.bak
cp /app/kasmvnc.yaml /etc/kasmvnc/kasmvnc.yaml

mkdir -p /root/.vnc

# 设置 VNC 密码
printf "debian\ndebian\n\n" | vncpasswd -u root -ow

# 配置 VNC 使用 XFCE 作为桌面环境
cat << EOF > /root/.vnc/xstartup
#!/bin/bash
set -x
exec xfce4-session
EOF
chmod +x ~/.vnc/xstartup

touch /root/.vnc/.de-was-selected

# 创建 .Xauthority 文件
touch ~/.Xauthority
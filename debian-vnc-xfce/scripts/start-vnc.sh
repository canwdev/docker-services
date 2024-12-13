#!/bin/bash

export USER=${USER:-root}

# 检查是否设置了 VNC 密码环境变量
if [ -z "$VNC_PASSWORD" ]; then
    echo "Warning: VNC_PASSWORD is not set. Using default password."
    VNC_PASSWORD="password"
fi

echo "$VNC_PASSWORD" | vncpasswd -f > /root/.vnc/passwd

# 启动 VNC 服务器并设置显示参数
vncserver :1 -geometry 1366x768 -depth 24

# 保持容器运行
tail -f /dev/null
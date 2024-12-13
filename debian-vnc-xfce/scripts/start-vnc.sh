#!/bin/bash

# 启动 VNC 服务器并设置显示参数
vncserver :1 -geometry 1366x768 -depth 24

# 保持容器运行
tail -f /dev/null
#!/bin/bash

echo Starting vncserver, please wait...
export DISPLAY=:1
vncserver -kill $DISPLAY
vncserver $DISPLAY
echo VNC session closed

# 保持容器运行
tail -f /dev/null
#!/bin/bash

# 确保以root权限运行
if [ "$(id -u)" != "0" ]; then
    echo "错误: 此脚本需要 root 权限"
    exit 1
fi

# 检查sing-box是否已安装
if command -v sing-box &> /dev/null; then
    current_version=$(sing-box version | grep 'sing-box version' | awk '{print $3}')
    echo "sing-box 已安装，版本：$current_version"
else
    echo "sing-box 未安装"
fi
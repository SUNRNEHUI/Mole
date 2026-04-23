#!/bin/bash

# Shared command list for help text and completions.
MOLE_COMMANDS=(
    "clean:清理缓存、日志和临时文件，释放磁盘空间"
    "uninstall:卸载应用并清理相关残留文件"
    "optimize:检查并维护系统健康状态"
    "optimise:检查并维护系统健康状态"
    "analyze:分析磁盘占用，查找大文件"
    "status:查看系统健康状态"
    "purge:清理旧项目构建产物"
    "installer:查找并删除安装包文件"
    "touchid:为 sudo 配置 Touch ID 验证"
    "completion:配置 shell 命令补全"
    "update:更新到最新版本"
    "remove:从系统中移除 Mole"
    "help:显示帮助"
    "version:显示版本信息"
)

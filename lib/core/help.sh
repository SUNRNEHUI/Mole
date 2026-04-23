#!/bin/bash

show_clean_help() {
    echo "用法: mo clean [选项]"
    echo ""
    echo "清理缓存、日志、临时文件，以及已卸载应用留下的残留文件，从而释放磁盘空间。"
    echo ""
    echo "选项:"
    echo "  --dry-run, -n     仅预览将要清理的内容，不做任何删除"
    echo "  --external PATH   清理已挂载外置磁盘上的系统元数据"
    echo "  --whitelist       管理受保护路径，避免误删"
    echo "  --debug           显示更详细的操作日志"
    echo "  -h, --help        显示此帮助信息"
}

show_installer_help() {
    echo "用法: mo installer [选项]"
    echo ""
    echo "查找并删除安装包文件，例如 .dmg、.pkg、.iso、.xip、.zip。"
    echo ""
    echo "选项:"
    echo "  --dry-run         仅预览安装包清理，不做任何删除"
    echo "  --debug           显示更详细的操作日志"
    echo "  -h, --help        显示此帮助信息"
}

show_optimize_help() {
    echo "用法: mo optimize [选项]"
    echo ""
    echo "检查并维护系统健康状态，按需执行优化操作。"
    echo ""
    echo "选项:"
    echo "  --dry-run         仅预览优化操作，不做任何修改"
    echo "  --whitelist       管理受保护项目"
    echo "  --debug           显示更详细的操作日志"
    echo "  -h, --help        显示此帮助信息"
}

show_touchid_help() {
    echo "用法: mo touchid [命令]"
    echo ""
    echo "为 sudo 管理员验证配置 Touch ID。"
    echo ""
    echo "命令:"
    echo "  enable            启用 sudo 的 Touch ID 验证"
    echo "  disable           关闭 sudo 的 Touch ID 验证"
    echo "  status            查看当前 Touch ID 状态"
    echo ""
    echo "选项:"
    echo "  --dry-run         仅预览 Touch ID 配置变化，不修改 sudo 配置"
    echo "  -h, --help        显示此帮助信息"
    echo ""
    echo "如果不提供命令，会显示交互菜单。"
}

show_uninstall_help() {
    echo "用法: mo uninstall [选项] [应用名称 ...]"
    echo ""
    echo "交互式卸载应用，并清理相关残留文件。"
    echo "也可以直接指定一个或多个应用名称进行卸载。"
    echo "如果应用已经删除，只想清理残留，请使用 mo clean。"
    echo ""
    echo "示例:"
    echo "  mo uninstall                   打开交互式应用选择器"
    echo "  mo uninstall slack             卸载 Slack"
    echo "  mo uninstall slack zoom        卸载 Slack 和 Zoom"
    echo "  mo uninstall --dry-run slack   预览卸载 Slack，不实际删除"
    echo "  mo uninstall --list            列出已安装应用和可识别名称"
    echo ""
    echo "选项:"
    echo "  --list            列出 mo uninstall 可识别的应用名称"
    echo "  --dry-run         仅预览卸载内容，不做任何删除"
    echo "  --permanent       跳过废纸篓，直接永久删除"
    echo "  --whitelist       卸载命令不支持此选项，请用于 clean/optimize"
    echo "  --debug           显示更详细的操作日志"
    echo "  -h, --help        显示此帮助信息"
    echo ""
    echo "默认情况下，被卸载的文件会移到 macOS 废纸篓，方便恢复。"
    echo "使用 --permanent 会跳过废纸篓并直接删除。"
}

#!/bin/bash
# Mole - Status command.
# Runs the Go system status panel.
# Shows live system metrics.

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
GO_BIN="$SCRIPT_DIR/status-go"

case "${1:-}" in
    --help | -h)
        echo "用法: mo status [选项]"
        echo ""
        echo "查看系统健康状态和实时指标。"
        echo ""
        echo "选项:"
        echo "  -json                         以 JSON 输出指标，不打开交互界面"
        echo "  -proc-cpu-alerts              启用高 CPU 进程持续告警"
        echo "  -proc-cpu-threshold <数值>     进程超过该 CPU 百分比时触发告警"
        echo "  -proc-cpu-window <时长>        进程持续超过阈值多久后告警"
        echo "  -h, --help                    显示此帮助信息"
        exit 0
        ;;
esac

if [[ -x "$GO_BIN" ]]; then
    exec "$GO_BIN" "$@"
fi

echo "内置状态面板二进制文件不存在。请重新安装 Mole，或运行 mo update 恢复它。" >&2
exit 1

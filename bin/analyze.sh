#!/bin/bash
# Mole - Analyze command.
# Runs the Go disk analyzer UI.
# Uses bundled analyze-go binary.

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
GO_BIN="$SCRIPT_DIR/analyze-go"

case "${1:-}" in
    --help | -h)
        echo "用法: mo analyze [路径] [选项]"
        echo ""
        echo "分析磁盘占用，帮助找出大文件和大目录。"
        echo ""
        echo "选项:"
        echo "  -json        以 JSON 输出分析结果，不打开交互界面"
        echo "  -h, --help   显示此帮助信息"
        exit 0
        ;;
esac

if [[ -x "$GO_BIN" ]]; then
    exec "$GO_BIN" "$@"
fi

echo "内置分析器二进制文件不存在。请重新安装 Mole，或运行 mo update 恢复它。" >&2
exit 1

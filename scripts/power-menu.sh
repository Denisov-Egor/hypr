#!/bin/bash

# =============================================================================
# HYPRLAND POWER MENU
# =============================================================================

OPTIONS="🔒 Заблокировать
🌙 Сон
🚪 Выйти
🔄 Перезагрузка
⏻ Выключение"

CHOICE=$(printf '%s\n' "$OPTIONS" | wofi \
    --dmenu \
    --prompt "Питание" \
    --width 400 \
    --height 300 \
    --cache-file /dev/null)

case "$CHOICE" in

    "🔒 Заблокировать")
        hyprlock
        ;;

    "🌙 Сон")
        systemctl suspend
        ;;

    "🚪 Выйти")
        hyprctl dispatch exit
        ;;

    "🔄 Перезагрузка")
        systemctl reboot
        ;;

    "⏻ Выключение")
        systemctl poweroff
        ;;

esac
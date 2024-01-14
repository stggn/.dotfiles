swayidle -w timeout 300 'swaylock -f -c 000000' \
            timeout 600 'hyprctl dispatch dpms off; brightnessctl -d *::kbd_backlight -s s 0' \
            resume 'hyprctl dispatch dpms on; brightnessctl -d *::kbd_backlight -r' \
            timeout 900 'systemctl suspend' \
            before-sleep 'swaylock -f -c 000000' &


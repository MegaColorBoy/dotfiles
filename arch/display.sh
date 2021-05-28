## Emulating Ctrl+P a.k.a Windows Display Switcher

#!/bin/bash
intern="LVDS"
choices="laptop\ndual\nexternal\nmirror"

# Display the choices
opt=$(echo -e $choices | dmenu -i)

# Look for connections
if [ `xrandr | grep VGA-0 | grep -c ' connected '` -eq 1 ]; then
    extern="VGA-0"
fi

case "$opt" in
    external) xrandr --output $intern --off --output $extern --auto --primary ;;
    laptop) xrandr --output $intern --auto --primary --output $extern --off ;;
    mirror) xrandr --output $intern --auto --output $extern --auto --same-as $intern ;;
    dual) xrandr --output $intern --auto --output $extern --auto --right-of $intern --primary ;;
esac

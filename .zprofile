# make dual monitor if monitor is available (HDMI)
HDMI=$(xrandr | grep "HDMI1\|HDMI-1")
if [[ $(awk '{print $2}' <<< "$HDMI") = "connected" ]]; then
    xrandr --output eDP1 --mode 1366x768 --pos 0x0 --rotate normal --output $(awk '{print $1}' <<< "$HDMI") --mode $(xrandr | sed -n $(expr $(xrandr | grep -n "HDMI1\|HDMI-1" | awk -F ':' '{print $1}') + 1)p | xargs | awk '{print $1}') --pos 1366x0 --rotate normal
fi

# bspwm config
export XDG_CONFIG_HOME="$HOME/.config"

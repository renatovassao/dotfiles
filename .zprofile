TOUCHPAD_ID=$(xinput list | grep "ELAN469D:00 04F3:304B Touchpad" | awk -F 'id=' '{print $2}' | awk '{print $1}')
if [[ ! -z "$TOUCHPAD_ID" ]]; then
    # change middle button to left button in touchpad
    xinput set-button-map "$TOUCHPAD_ID" 1 1 3 4 5 6 7

    # enable tap to click
    xinput set-prop "$TOUCHPAD_ID" 305 1
    
    # disable tapping drag
    xinput set-prop "$TOUCHPAD_ID" 307 0
fi

# make dual monitor if monitor is available (HDMI)
HDMI=$(xrandr | grep HDMI1 | awk '{print $2}')
if [[ "$HDMI" == "connected" ]]; then
    xrandr --output eDP1 --mode 1366x768 --pos 0x0 --rotate normal --output HDMI1 --mode 1600x900 --pos 1366x0 --rotate normal
fi


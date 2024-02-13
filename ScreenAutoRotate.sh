#!/bin/bash

TOUCHSCREEN_DEVICE='IPTS Touch'             # Use your actual touchscreen device name

monitor-sensor | grep --line-buffered "orientation changed" | while read -r line; do
    orientation=$(echo $line | grep -oE '[^ ]+$')
    case $orientation in
        bottom-up)
            xrandr -o inverted
            xinput set-prop "$TOUCHSCREEN_DEVICE" 'Coordinate Transformation Matrix' -1 0 1 0 -1 1 0 0 1
            ;;
        right-up)
            xrandr -o right
            xinput set-prop "$TOUCHSCREEN_DEVICE" 'Coordinate Transformation Matrix' 0 1 0 -1 0 1 0 0 1
            ;;
        left-up)
            xrandr -o left
            xinput set-prop "$TOUCHSCREEN_DEVICE" 'Coordinate Transformation Matrix' 0 -1 1 1 0 0 0 0 1
            ;;
        normal)
            xrandr -o normal
            xinput set-prop "$TOUCHSCREEN_DEVICE" 'Coordinate Transformation Matrix' 1 0 0 0 1 0 0 0 1
            ;;
    esac
done

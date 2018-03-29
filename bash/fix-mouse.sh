#!/bin/bash

xset m 2 10
xinput --set-prop "Logitech M705" "Device Accel Constant Deceleration" 2
xinput --set-prop "Logitech M705" "Device Accel Velocity Scaling" 1
xinput --set-prop "Logitech M705" "Device Accel Profile" -1
xinput --set-prop "Logitech M705" "Device Enabled" 0
xinput --set-prop "Logitech M705" "Device Enabled" 1

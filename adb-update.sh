#!/bin/bash

scp developer@192.168.0.252:/home/developer/WorkspaceX/android/hardware/dw-ril/libreference-ril.so ./
#scp developer@action-android:/home/developer/WorkspaceX/android/hardware/dw-ril/libreference-ril.so ./

adb shell stop ril-daemon
adb shell rm /system/lib/libreference-ril.so
adb push ./libreference-ril.so /system/lib/



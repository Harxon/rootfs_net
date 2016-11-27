#!/bin/sh
insmod /modules/led.ko
mknod /dev/led c 255 0
insmod /fs4412_pwm.ko
mknod /dev/beep c 280 0
sleep 1
#insmod /modules/temp/mt7601Usta.ko
#sleep 4
#rmmod mt7601Usta
#sleep 2
#insmod /modules/mt7601Usta.ko
#cd /
#sleep 1

#ifconfig wlan0 up
#ifconfig wlan0 192.168.2.20
#route add default gw 192.168.2.1 
#wpa_supplicant -B -iwlan0 -c /etc/wpa_supplicant.conf

mkfifo /tmp/webcam

echo "mkfifo /tmp/webcam done\n"

mjpg_streamer -i "/mjpg/input_uvc.so -y" -o "/mjpg/output_http.so -w /www" -o "/mjpg/output_file.so  -f  /www/pice " &
#wpa_cli status

./etc/boa/boa &

#wpa_cli scan
#sleep 1
#wpa_cli scan_results > temp
#sleep 1
#wpa_cli scan
#sleep 1
#wpa_cli scan_results > temp 

sleep 1
cd /
./storage_mamage  &

#sleep 2
#./mainWidget -qws &

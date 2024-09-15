#!bin/sh

if [ -d /etc/X11/xinit/xinitrc.d ]; then
	for f in /etc/X11/xinit/xinitrc.d/*; do
		[ -x "$f" ] && . "$f"
	done
	unset f
fi

nitrogen --restore &
picom --config ~/.config/picom.conf &
nm-applet &
#blueman-applet &
while true; do
    espacio_disponible=$(df -h /dev/sdc2 | awk 'NR==2 {print $4}')
    fecha=$(date '+%A%e de %B de %Y')
    hora=$(date '+%H:%M:%S')
    xsetroot -name "   $(uname -r) |   $espacio_disponible | $(free -m | grep '^Mem' | awk '{print "" $2 " MB, Used: " $3" MB"}') | $fecha $hora"
    sleep 1s
done &
#while true; do
#	xsetroot -name "  $(uname -r) | $(free -m | grep '^Mem' | awk '{print "" $2 " MB,  Used: " $3" MB"}')  |   $(date '+%A %H:%M:%S +%m:%d:%y')"
#	sleep 1s
#done &

#
#xsetroot -name "Memory $(free -m | grep '^Mem' | awk '{print "total: " $2 "MB used: " $3"MB"}')
#| CPU $(top -bn 1 | grep '^Cpu' | tr -d 'usy,' | awk '{print "user " $2 ", sys " $3}') |
#Uptime: $(uptime | awk '{print $3}' | tr -d ',') |
#Now playing: $(ncmpcpp --now-playing | tr -d '(:[:digit:])') | $( date +"%F %R" )"


#/usr/local/bin/wmname LG3D &
exec dwm

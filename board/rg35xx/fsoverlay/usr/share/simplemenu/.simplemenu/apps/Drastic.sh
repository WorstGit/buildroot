#!/bin/sh

if [ ! -d /userdata/system/configs/drastic ];then
	mkdir -p /userdata/system/configs/drastic
	cp -r /usr/share/drastic/* /userdata/system/configs/drastic/
fi

cd /userdata/system/configs/drastic

killall evmapy
drastic
evmapy &


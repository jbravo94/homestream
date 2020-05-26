#!/bin/bash
su -c "/home/vlc/httpstream.sh" - vlc &
apachectl start
sleep 3
/root/hlsstream.sh

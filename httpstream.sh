#!/bin/bash
vlc -I dummy -vvv --random --playlist-autostart --loop --playlist-tree '/mnt/media' --sout '#standard{access=http,mux=ts,dst=0.0.0.0:8081/stream.mp4}' --sout-keep

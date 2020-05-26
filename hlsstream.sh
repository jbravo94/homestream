#!/bin/bash
ffmpeg -i http://127.0.0.1:8081/stream.mp4 -profile:v baseline -level 3.0 -s 640x360 -start_number 0 -hls_time 10 -hls_list_size 0 -f hls /var/www/html/index.m3u8 -nostdin #-loglevel quiet

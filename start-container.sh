#!/bin/bash
sudo docker run -it -v /home/johnny/Videos:/mnt/media -p 8878:80 -p 8877:8081 homestream:1.0 /bin/bash

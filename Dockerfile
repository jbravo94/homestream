FROM ubuntu:18.04

RUN apt update

RUN apt install -y apache2 vlc ffmpeg

RUN useradd -s /bin/sh -d /home/vlc -m vlc

RUN mkdir -p /mnt/media

COPY httpstream.sh /home/vlc/httpstream.sh

RUN chown vlc:vlc /home/vlc/httpstream.sh
RUN chmod +x /home/vlc/httpstream.sh

COPY hlsstream.sh /root/hlsstream.sh
RUN chmod +x /root/hlsstream.sh

COPY cleanupstreamfiles /etc/cron.hourly/cleanupstreamfiles
RUN chmod +x /etc/cron.hourly/cleanupstreamfiles

COPY start.sh /root/start.sh
RUN chmod +x /root/start.sh

CMD ["/root/start.sh"]

EXPOSE 80 8081

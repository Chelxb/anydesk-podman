FROM docker.io/ubuntu:20.04

ENV DISPLAY=:1

RUN apt-get update \
&& apt-get install -y \
curl \
libglib2.0-0 \
libgtk-3-0 \
libx11-6 \
libxcb-shm0 \
libxcb1 \
libpango-1.0-0 \
libcairo2 \
libxrandr2 \
libx11-xcb1 \
libxtst6 \
libxfixes3 \
libxdamage1 \
libxkbfile1 \
libgl1 \
libpolkit-gobject-1-0 \
iproute2 \
pciutils \
lsb-release

ADD https://download.anydesk.com/linux/anydesk-6.4.3-amd64.tar.gz /tmp/

RUN groupadd -g 1042 anydesk \
&& useradd -u 1042 -g anydesk -m anydesk

RUN tar -xzf /tmp/anydesk-6.4.3-amd64.tar.gz -C /opt \
&& rm -f /tmp/anydesk-6.4.3-amd64.tar.gz

USER anydesk

CMD /opt/anydesk-6.4.3/anydesk

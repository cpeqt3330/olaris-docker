FROM ubuntu:xenial as base

# Install ffmpeg dependencies
RUN     apt-get -y update && \
        apt-get -y --no-install-recommends install git curl ca-certificates curl unzip libaacs0 libasound2 libasound2-data libass5 libasyncns0 libavc1394-0 libavcodec-ffmpeg56 libavdevice-ffmpeg56 libavfilter-ffmpeg5 libavformat-ffmpeg56 libavresample-ffmpeg2 libavutil-ffmpeg54 libbdplus0 libbluray1 libbs2b0 libcaca0 libcdio-cdda1 libcdio-paranoia1 libcdio13 libcrystalhd3 libdc1394-22 libelf1 libflac8 libflite1 libfontconfig1 libfreetype6 libfribidi0 libgl1-mesa-dri libgl1-mesa-glx libglapi-mesa libgme0 libgomp1 libgraphite2-3 libgsm1 libharfbuzz0b libicu55 libiec61883-0 libjack-jackd2-0 libjson-c2 libllvm5.0 libmodplug1 libmp3lame0 libnuma1 libogg0 libopenal-data libopenal1 libopencv-core2.4v5 libopencv-imgproc2.4v5 libopenjpeg5 libopus0 liborc-0.4-0 libpciaccess0 libpng12-0 libpostproc-ffmpeg53 libpulse0 libraw1394-11 libsamplerate0 libschroedinger-1.0-0 libsdl1.2debian libsensors4 libshine3 libslang2 libsnappy1v5 libsndfile1 libsodium18 libsoxr0 libspeex1 libssh-gcrypt-4 libswresample-ffmpeg1 libswscale-ffmpeg3 libtbb2 libtheora0 libtwolame0 libtxc-dxtn-s2tc0 libusb-1.0-0 libva1 libvdpau1 libvorbis0a libvorbisenc2 libvpx3 libwavpack1 libwebp5 libx11-6 libx11-data libx11-xcb1 libx264-148 libx265-79 libxau6 libxcb-dri2-0 libxcb-dri3-0 libxcb-glx0 libxcb-present0 libxcb-shape0 libxcb-shm0 libxcb-sync1 libxcb-xfixes0 libxcb1 libxdamage1 libxdmcp6 libxext6 libxfixes3 libxml2 libxshmfence1 libxv1 libxvidcore4 libxxf86vm1 libzmq5 libzvbi-common libzvbi0 sgml-base ucf xml-core && \
        apt-get autoremove -y && apt-get clean -y

RUN git clone -b master https://gitlab.com/olaris/ffmpeg.git


ADD run-olaris /opt/run-olaris
EXPOSE 8080

ENV LOGTOSTDERR=1
ENV V=4
ENTRYPOINT /opt/run-olaris

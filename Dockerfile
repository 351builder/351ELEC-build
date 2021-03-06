FROM ubuntu:20.04

RUN apt-get update  \
    && DEBIAN_FRONTEND=noninteractive \
      apt-get install -y \
      dos2unix binutils-aarch64-linux-gnu bsdmainutils bc zip python-dev gcc make git unzip wget \
      xz-utils libsdl2-dev libsdl2-mixer-dev libfreeimage-dev libfreetype6-dev libcurl4-openssl-dev \
      rapidjson-dev libasound2-dev libgl1-mesa-dev build-essential libboost-all-dev cmake fonts-droid-fallback \
      libvlc-dev libvlccore-dev vlc-bin texinfo premake4 golang libssl-dev curl patchelf \
      xmlstarlet patchutils gawk gperf xfonts-utils default-jre python xsltproc libjson-perl \
      lzop libncurses5-dev device-tree-compiler u-boot-tools rsync p7zip unrar libparse-yapp-perl \
      && apt-get autoremove --purge -y \
      && apt-get clean -y \
      && rm -rf /var/lib/apt/lists/*

RUN adduser --disabled-password --gecos '' docker

RUN mkdir -p /work && chown docker /work

WORKDIR /work
USER docker


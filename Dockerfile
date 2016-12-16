from ubuntu:xenial
maintainer yans@yancomm.net

run apt-get update &&									\
	apt-get install -y virtualenvwrapper python2.7-dev build-essential libxml2-dev libxslt1-dev git libffi-dev cmake libreadline-dev libtool debootstrap debian-archive-keyring libglib2.0-dev libpixman-1-dev libqt4-dev graphviz-dev

run useradd -s /bin/bash -m angr

user angr
workdir /home/angr

run git clone https://github.com/angr/angr-dev && cd angr-dev && ./setup.sh -w -e angr
run echo 'workon angr' >> /home/angr/.bashrc
cmd bash

FROM ghcr.io/ublue-os/bluefin-dx-nvidia:stable

## Nvidia users use this instead
# FROM ghcr.io/ublue-os/base-nvidia:latest


## Install a Desktop
# Use `dnf5 group list` to see possible group packages to install, or choose them individually

# RUN dnf5 group install kde-desktop kde-apps

## Install applications
# Anything in Fedora
COPY / / 
RUN dnf5 -y install vlc emacs
RUN ./steam.sh
RUN ./desktop-apps.sh

## Add COPRs
# RUN dnf copr enable (copr-author/name)
# RUN dnf5 install thing-from-copr

## Manage services
# systemctl enable foo.service

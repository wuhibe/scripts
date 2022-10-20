#!/usr/bin/bash
apt -y update
apt -y upgrade
apt autoremove --purge
shutdown -h now

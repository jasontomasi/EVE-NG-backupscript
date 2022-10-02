#!/usr/bin/env bash

EVEBACKUPDIR="/home/user/backups"
EVEBACKUPDATE=$(date "+%Y-%m-%d_%H-%M-%S")

mkdir ${EVEBACKUPDIR}

find /opt/unetlab/labs -mindepth 0 -maxdepth 10 -type f \( ! -iname "*.bin" \) -exec zip -r ${EVEBACKUPDIR}/${EVEBACKUPDATE}-LABS.zip {} \;
find /opt/unetlab/tmp -mindepth 0 -maxdepth 10 -type f \( ! -iname "*.bin" \) -exec zip -r ${EVEBACKUPDIR}/${EVEBACKUPDATE}-CONFIGS.zip {} \;


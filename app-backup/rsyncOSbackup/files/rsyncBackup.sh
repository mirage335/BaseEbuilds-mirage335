#!/bin/bash
. /usr/bin/ubiquitous_bash.sh
mustBeRoot

mkdir -p /OS_Backup/rsync

sudo rsync -av --exclude proc --exclude sys --exclude dev --exclude media --exclude mnt --exclude home --exclude OS_Backup --delete / /OS_Backup/rsync/

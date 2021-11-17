#!/bin/sh

DATE=$(date '+%Y-%m-%d %H:%M:%S')
echo Data utworzenia: ${DATE}  > info.log
cat /sys/fs/cgroup/memory/memory.usage_in_bytes  | awk '{ byte =$1 /1024/1024; print "Zajete miejsce w pamieci " byte " MB" }' >> info.log

#!/bin/bash
while ! mount -t cifs -o username=administrator,password=<BUFFALOPASS>,vers=2.0  <BUFFALOSHARE> <LOCALSHARE>;
  do echo "mount not available"
  umount -l <LOCALSHARE>
  sleep 5
done
echo "mounted"
sleep 60
java -jar <ACPPATH>/acp_commander.jar -t <BUFFALOIP> -pw <BUFFALOPASS> -o
mkdir -p <DEST>
ulimit -m 1048576 && ionice -c2 -n7 rsync -a --partial --inplace --info=NAME --human-readable --timeout=600 --recursive <SOURCE> <DEST>
umount <LOCALSHARE>
echo "unmounted"
sleep 60
java -jar <ACPPATH>/acp_commander.jar -t <BUFFALOIP> -pw <BUFFALOPASS> -c shutdown
sleep 60

small script that watches when a buffalo nas is available, mounts, updates the share and shuts off the nas afterwards.
it also activates telnet for the duration of the backup for monitoring purposes.
can be used as a cronjob or a systemd service with the included file.
just replace BUFFALOPASS BUFFALOSHARE LOCALSHARE ACPPATH BUFFALOIP SOURCE DEST.
requires acp commander to perform the telnet and shutdown functions.
i may make a more cohesive configurable version if i am not bored :)

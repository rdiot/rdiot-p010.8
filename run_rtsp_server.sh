#!/bin/sh

ffserver -f ffserver.conf &

/* config sample 

/usr/share/doc/ffmpeg/ffserver.conf : defulat config

Port 8090
BindAddress 0.0.0.0
 
RTSPPort 8091
RTSPBindAddress 0.0.0.0
 
MaxClients 1000
MaxBandwidth 10000
CustomLog -
 
<Feed feed1.ffm>
File /tmp/feed1.ffm
ACL Allow 127.0.0.1
</Feed>
 
<Stream test1.mp4>
Feed feed1.ffm
Format rtp
VideoFrameRate 30
VideoBitRate 5000
VideoSize 640x480
VideoQMin 3
VideoQMax 31
NoAudio
NoDefaults
</Stream>

*/

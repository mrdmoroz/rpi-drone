
#!/bin/bash

#gst-launch-1.0 -q v4l2src device=/dev/video0 ! queue ! \
#"video/x-h264,width=1280,height=720,framerate=30/1,minimum-bitrate=(uint)2000000,maximum-bitrate=(uint)2500000,bitrate=(uint)2200000" ! \
#h264parse ! rtph264pay \
#pt=96 config-interval=1 ! udpsink host=10.5.1.106 port=5000


gst-launch-1.0 v4l2src device=/dev/video0 ! \
video/x-h264,width=1280,height=720,framerate=30/1 ! \
h264parse ! rtph264pay pt=127 config-interval=4 ! \
udpsink host=10.5.1.106 port=5000

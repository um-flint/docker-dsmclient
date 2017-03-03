Dockerfile for building a container with the Dell Storage Manager 2016 R3.1 Linux Client

I did this so I could run the Linux fat client on a Mac

Assuming you build with the tag dsmclient, and XQuartz is installed with remote connections enabled:

$ xhost +$YOURIP
$ docker run --rm -it -e DISPLAY=$YOURIP:0 dsmclient

vaudtax
=======

to allow the docker image to access the host x-server, run it as follow

```sh
XSOCK=/tmp/.X11-unix
XAUTH=$(mktemp)

xauth nlist :0 | sed -e 's/^..../ffff/' | xauth -f $XAUTH nmerge -
docker run -v $XSOCK:$XSOCK -v $XAUTH:$XAUTH -e DISPLAY=$DISPLAY -e XAUTHORITY=$XAUTH tharvik/vaudtax
```

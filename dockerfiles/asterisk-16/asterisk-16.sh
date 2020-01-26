#/usr/bin/bash

COMMAND=$1


function start () {
    docker run -d --rm --name=asterisk-16 --net=host \
	-v ${HOME}/etc-asterisk/asterisk.conf:/etc/asterisk/asterisk.conf:rw \
	-v ${HOME}/etc-asterisk/sip.conf:/etc/asterisk/sip.conf:rw \
	-v ${HOME}/etc-asterisk/extensions.conf:/etc/asterisk/extensions.conf:rw \
	-v ${HOME}/etc-asterisk/http.conf:/etc/asterisk/http.conf:rw \
	-v ${HOME}/etc-asterisk/ari.conf:/etc/asterisk/ari.conf:rw \
	-v /var/run/asterisk:/var/run/asterisk:rw \
	jessicahahn/asterisk-16 asterisk -f

}

function stop () {
    docker stop asterisk-16 
}

if [ $COMMAND == 'start' ];
then
    start

elif [ $COMMAND == 'stop' ];
    then
       stop
       exit 0
elif [ $COMMAND == 'restart' ];
    then
        start
        stop

else
    echo "Invalid Argument! not is start, stop or restart"
fi

docker exec -it asterisk-16 rasterisk
#/usr/bin/bash

COMMAND=$1
PATH=$2
CONTAINER=$3
MODULE=$4

function start() {
   /usr/bin/docker run -d --rm --name=asterisk-16-pbx --net=host \
	-v ${PATH}/etc-asterisk/asterisk.conf:/etc/asterisk/asterisk.conf:rw \
	-v ${PATH}/etc-asterisk/sip.conf:/etc/asterisk/sip.conf:rw \
	-v ${PATH}/etc-asterisk/extensions.conf:/etc/asterisk/extensions.conf:rw \
	-v ${PATH}/etc-asterisk/http.conf:/etc/asterisk/http.conf:rw \
	-v ${PATH}/etc-asterisk/ari.conf:/etc/asterisk/ari.conf:rw \
	-v ${PATH}/etc-asterisk/manager.conf:/etc/asterisk/manager.conf:rw \
    	-v ${PATH}/etc-asterisk/cdr_manager.conf:/etc/asterisk/cdr_manager.conf:rw \
	-v ${PATH}/etc-asterisk/cdr.conf:/etc/asterisk/cdr.conf:rw \
	-v /var/run/asterisk:/var/run/asterisk:rw \
	-v /home/jessica/Documentos/asterisk:/home/Documentos/asterisk:rw \
        -v ${MODULE}:${CONTAINER}:rw \
	-v /etc/localtime:/etc/localtime:ro \
	jessicahahn/asterisk-16 asterisk -f

}

function stop() {
    /usr/bin/docker stop asterisk-16-pbx 
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
#rasterisk
/usr/bin/docker exec -it asterisk-16-pbx bash

all: restart cli

start: 
	docker run -d --rm --name=asterisk-16 --net=host \
	-v ${HOME}/etc-asterisk/asterisk.conf:/etc/asterisk/asterisk.conf:rw \
	-v ${HOME}/etc-asterisk/sip.conf:/etc/asterisk/sip.conf:rw \
	-v ${HOME}/etc-asterisk/extensions.conf:/etc/asterisk/extensions.conf:rw \
	-v ${HOME}/etc-asterisk/http.conf:/etc/asterisk/http.conf:rw \
	-v ${HOME}/etc-asterisk/ari.conf:/etc/asterisk/ari.conf:rw \
	-v /var/run/asterisk:/var/run/asterisk:rw \
	jessicahahn/asterisk-16 asterisk -f

stop:
	docker stop asterisk-16

restart: stop start

cli:
	docker exec -it asterisk-16 rasterisk

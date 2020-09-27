PROJECT=$1
CONTAINER=$2
IMAGE=$3
NAME=$4
SSH=$5

docker run -it --name=$NAME -v $PROJECT:$CONTAINER:rw -v $SSH/etc-ssh/sshd_config:/etc/ssh/sshd_config:rw  -v /etc/localtime:/etc/localtime:ro --net=host $IMAGE bash

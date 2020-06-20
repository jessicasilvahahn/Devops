path=$1
path_container=$2
docker_image=$3
name=$4
path_ssh=$5

docker run -it --name=$name -v $path:$path_container:rw -v /etc/localtime:/etc/localtime:ro -v $path_ssh/etc-ssh/sshd_config:/etc/ssh/sshd_config:rw -p 2222:2222 -p 2403:2403 -p 2402:2402 -p 8081:8081 -p 8082:8082 $docker_image bash

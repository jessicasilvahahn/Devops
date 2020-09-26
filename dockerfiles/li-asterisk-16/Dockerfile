FROM debian
MAINTAINER Jessica Hahn
RUN apt -y update && \
    apt -y upgrade && \
    apt -y install wget git build-essential vim libsqlite3-dev tcpdump openssh-server cmake && \
    mkdir -p /opt/libs && \
    cd /tmp && \
    git clone https://github.com/jessicasilvahahn/Devops.git && \
    cd Devops/libs && \
    tar -xzvf zlib-1.2.11.tar.gz && \
    cd zlib-1.2.11 && \
    ./configure --prefix=/opt/libs/zlib-1.2.11 && \
    make && \
    make install && \
    cd /tmp/Devops/libs && \
    tar -xzvf openssl-1.1.1d.tar.gz && \
    cd openssl-1.1.1d && \
    ./config --prefix=/usr/local && \
    make && \
    make install && \
    mkdir /opt/tools && \
    cd /tmp/Devops/tools && \
    tar -xzvf Python-3.6.7.tgz && \
    cd Python-3.6.7/ && \
    ./configure --prefix=/opt/tools/Python-3.6.7 LDFLAGS="-L/opt/libs/zlib-1.2.11/lib/" CPPFLAGS="-I/opt/libs/zlib-1.2.11/include/" && \
    make && \
    make install && \
    cp /tmp/Devops/libs/panoramisk-1.2.tar.gz /opt/libs/ && \
    cp /tmp/Devops/libs/scapy-2.4.2.tar.gz /opt/libs/ && \
    cp /tmp/Devops/libs/asyncio-3.4.3.tar.gz /opt/libs/ && \
    cp /tmp/Devops/libs/paramiko-2.7.1.tar.gz /opt/libs/ && \
    /opt/tools/Python-3.6.7/bin/pip3 install /opt/libs/panoramisk-1.2.tar.gz && \
    /opt/tools/Python-3.6.7/bin/pip3 install /opt/libs/scapy-2.4.2.tar.gz && \
    /opt/tools/Python-3.6.7/bin/pip3 install /opt/libs/asyncio-3.4.3.tar.gz && \
    /opt/tools/Python-3.6.7/bin/pip3 install /opt/libs/paramiko-2.7.1.tar.gz && \
    /opt/tools/Python-3.6.7/bin/pip3 install urllib3 && \
    /opt/tools/Python-3.6.7/bin/pip3 install requests && \
    /opt/tools/Python-3.6.7/bin/pip3 install python-daemon




FROM debian
MAINTAINER Jessica Hahn
RUN apt -y update && \
    apt -y upgrade && \
    apt -y install wget git build-essential vim libsqlite3-dev tcpdump && \
    mkdir -p /opt/li-asterisk/libs && \
    cd /tmp && \
    git clone https://github.com/jessicasilvahahn/Devops.git && \
    cd Devops/libs && \
    tar -xzvf zlib-1.2.11.tar.gz && \
    cd zlib-1.2.11 && \
    ./configure --prefix=/opt/li-asterisk/libs/zlib-1.2.11 && \
    make && \
    make install && \
    cd /tmp/Devops/libs && \
    tar -xzvf openssl-1.1.1d.tar.gz && \
    cd openssl-1.1.1d && \
    ./config --prefix=/opt/li-asterisk/libs/openssl-1.1.1d && \
    make && \
    make install && \
    mkdir /opt/li-asterisk/tools && \
    cd /tmp/Devops/tools && \
    tar -xzvf Python-3.6.7.tgz && \
    cd Python-3.6.7/ && \
    ./configure --prefix=/opt/li-asterisk/tools/Python-3.6.7 LDFLAGS="-L/opt/li-asterisk/libs/zlib-1.2.11/lib/ -L/opt/li-asterisk/libs/openssl-1.1.1d/lib" CPPFLAGS="-I/opt/li-asterisk/libs/zlib-1.2.11/include/ -I/opt/li-asterisk/libs/openssl-1.1.1d/include" && \
    make && \
    make install && \
    cp /tmp/Devops/libs/panoramisk-1.2.tar.gz /opt/li-asterisk/libs/ && \
    cp /tmp/Devops/libs/scapy-2.4.2.tar.gz /opt/li-asterisk/libs/ && \
    cp /tmp/Devops/libs/asyncio-3.4.3.tar.gz /opt/li-asterisk/libs/ && \
    /opt/li-asterisk/tools/Python-3.6.7/bin/pip3 install /opt/li-asterisk/libs/panoramisk-1.2.tar.gz && \
    /opt/li-asterisk/tools/Python-3.6.7/bin/pip3 install /opt/li-asterisk/libs/scapy-2.4.2.tar.gz && \
    /opt/li-asterisk/tools/Python-3.6.7/bin/pip3 install /opt/li-asterisk/libs/asyncio-3.4.3.tar.gz && \
    /opt/li-asterisk/tools/Python-3.6.7/bin/pip3 install urllib3 && \
    /opt/li-asterisk/tools/Python-3.6.7/bin/pip3 install requests && \
    /opt/li-asterisk/tools/Python-3.6.7/bin/pip3 install python-daemon

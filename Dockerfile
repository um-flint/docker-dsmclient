FROM oraclelinux:7
MAINTAINER Adam Robinson <adarobin@umflint.edu>
RUN cd /tmp \
    && curl -O https://downloads.dell.com/FOLDER04177002M/1/DellStorageClientLinux-16.3.1.301.zip \
    && yum -y install libXext libXrender libXtst unzip \
    && unzip DellStorageClientLinux-16.3.1.301.zip \
    && yum -y install /tmp/dell-smclient-16.3.1-301.x86_64.rpm \
    && rm dell-smclient-16.3.1-301.x86_64.rpm DellStorageClientLinux-16.3.1.301.zip \
    && yum clean all

ENTRYPOINT [ "/var/lib/dell/bin/Client" ]

FROM swift:amazonlinux2

RUN yum -y install zip
RUN yum -y install openssl-devel
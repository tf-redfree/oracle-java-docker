FROM centos:7

RUN mkdir -p /tmp
RUN curl -v -j -k -L -H "Cookie: oraclelicense=accept-securebackup-cookie" "http://download.oracle.com/otn-pub/java/jdk/8u131-b11/d54c1d3a095b4ff2b6607d096fa80163/jdk-8u131-linux-x64.rpm" > /tmp/jdk-installer.rpm
RUN rpm -Uvh /tmp/jdk-installer.rpm

CMD ["/bin/bash"]

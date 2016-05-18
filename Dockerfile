FROM ubuntu
MAINTAINER Islam Ahmed <info@hosted-services.us>
RUN apt-get  update && apt-get  upgrade -y openssh-server
RUN mkdir -p /var/run/sshd
ONBUILD ADD sshd_config /etc/ssh/sshd_config

CMD /usr/sbin/sshd -D

USER nobody
WORKDIR /temp
ENV foobar "Hello World"
EXPOSE 2222

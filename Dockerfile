FROM ubuntu:20.04
ENV TZ=America/Los_Angeles
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN apt-get update; apt-get install -y unzip openjdk-11-jre-headless wget supervisor docker.io openssh-server curl
ENV JAVA_HOME /usr/lib/jvm/java-11-openjdk-amd64/
RUN echo 'root:root' | chpasswd
RUN mkdir /var/run/sshd
RUN sed -i 's/PermitRootLogin without-password/PermitRootLogin yes/' /etc/ssh/sshd_config

EXPOSE 22
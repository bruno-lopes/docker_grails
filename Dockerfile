FROM ubuntu:14.04
MAINTAINER Bruno Lorenço Lopes <bruno.eng.comp@gmail.com>
RUN apt-get update && apt-get install -y curl \
	unzip \
	software-properties-common 
RUN sudo add-apt-repository ppa:openjdk-r/ppa -y
RUN sudo apt-get update
RUN sudo apt-get install openjdk-8-jdk -y
#RUN sudo groupadd -r -f grails
#RUN sudo useradd -r -g grails grails
RUN sudo useradd grails -m -U

#RUN sudo useradd -r -g grails grails
RUN ls -ltra /home
USER grails
RUN ls -ltra
RUN curl -s get.sdkman.io | bash
RUN /bin/bash -c "source $HOME/.sdkman/bin/sdkman-init.sh && sdk install grails"

EXPOSE 8080

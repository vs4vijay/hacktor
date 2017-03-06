FROM ubuntu:latest

MAINTAINER Vijay Soni <vs4vijay@gmail.com>

RUN apt-get update -y 
RUN apt-get install -y build-essential wget curl git vim xz-utils net-tools libcap* libssl-dev libpcre3-dev libidn11-dev
RUN apt-get install -y python python-pip

RUN apt-get install -y nmap 
RUN apt-get install -y aircrack-ng 

RUN mkdir /hacktor
WORKDIR /hacktor

RUN git clone https://github.com/spinkham/skipfish
RUN cd skipfish && make && cp skipfish ..

EXPOSE 9999

CMD ["/bin/bash"]


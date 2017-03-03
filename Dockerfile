FROM ubuntu:latest

MAINTAINER Vijay Soni <vs4vijay@gmail.com>

RUN apt-get update -y 
RUN apt-get install -y build-essential wget curl xz-utils libcap* python python-pip

RUN apt-get install -y nmap 
RUN apt-get install -y aircrack-ng 

CMD ["/bin/bash"]


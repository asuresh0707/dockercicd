FROM ubuntu 14.04
ENV DEBEIAN_FRONTEND noninteractive
RUN apt-get update -y
RUN apt-get install curl -y
RUN apt-get install nmap -y
RUN apt-get install socat -y
RUN apt-get install openssl -y
RUN echo "source /root/bash_extra" >> /root/.bashrc
ADD bash_extra  /root/bash_extra
CMD ["/bin/bash"]
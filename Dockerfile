FROM ubuntu:latest

WORKDIR /teeworlds
ADD ./entrypoint.sh .
RUN chmod +x ./entrypoint.sh

RUN apt update && apt upgrade -y

RUN apt install -y wget

RUN wget https://downloads.teeworlds.com/teeworlds-0.7.5-linux_x86_64.tar.gz \
    && tar -xzf teeworlds-0.7.5-linux_x86_64.tar.gz \
    && rm teeworlds-0.7.5-linux_x86_64.tar.gz

EXPOSE 8303/udp

# add config file
WORKDIR /teeworlds/configfile
ADD ./configfile/custom_config.cfg .
WORKDIR /teeworlds

ENTRYPOINT ./entrypoint.sh
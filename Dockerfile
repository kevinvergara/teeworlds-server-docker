FROM ubuntu:latest

WORKDIR /teeworlds

RUN apt update && apt upgrade -y

RUN apt install -y wget curl build-essential cmake git \
    libfreetype6-dev libsdl2-dev \
    libpnglite-dev libwavpack-dev python3

RUN wget https://downloads.teeworlds.com/teeworlds-0.7.5-linux_x86_64.tar.gz \
    && tar -xzf teeworlds-0.7.5-linux_x86_64.tar.gz \
    && rm teeworlds-0.7.5-linux_x86_64.tar.gz



EXPOSE 8303/udp

#CMD ["/teeworlds/teeworlds-0.7.5-linux_x86_64/teeworlds_srv", "-console", "-port", "8303"] 
CMD [ "tail", "-f", "/dev/null" ]
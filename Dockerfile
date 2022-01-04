FROM debian:latest

RUN apt update && apt upgrade -y
RUN apt install git python3-pip -y
RUN git clone https://github.com/odysseusmax/tg-index
WORKDIR /tg-index
RUN pip3 install -U -r requirements.txt
CMD python3 -m app
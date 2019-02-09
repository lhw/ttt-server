FROM hackebein/steamcmd

MAINTAINER mail@nasourso.com

RUN mkdir /cfg

VOLUME /cfg

RUN mkdir /app

VOLUME /app

RUN mkdir /content

VOLUME /content

WORKDIR /

ADD run.sh /

RUN chmod +x run.sh

RUN apt-get update && apt-get install screen tree lib32tinfo5 libcurl3-gnutls:i386 -y && apt-get clean

RUN steamcmd \ +quit

RUN mkdir -p /root/.steam/sdk32

RUN ln -sf /root/.steam/steamcmd/linux32/* /root/.steam/sdk32

CMD ["./run.sh"]

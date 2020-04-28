FROM steamcmd/steamcmd
MAINTAINER Lennart Weller <lhw@ring0.de>

RUN mkdir /cfg /app /content
WORKDIR /

ADD run.sh /

USER nobody
VOLUME ["/cfg", "/app", "/content"]
ENTRYPOINT ["/run.sh"]

FROM debian:stable-slim

MAINTAINER zocker-160

RUN \
	apt-get update \
	&& apt-get install -y python-pip unzip wget \
	&& pip install cython twisted jinja2 pillow pygeoip pycrypto pyasn1

RUN wget https://github.com/NateShoffner/PySnip/archive/master.zip -O PySnip.zip
RUN unzip PySnip.zip && rm PySnip.zip
WORKDIR /PySnip-master
RUN ./build.sh

VOLUME ["/PySnip-master/feature_server"]

EXPOSE 32887

CMD ./run_server.sh

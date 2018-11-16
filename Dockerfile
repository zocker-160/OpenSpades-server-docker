FROM debian:stretch-slim

MAINTAINER zocker-160

RUN \
	apt-get update \
	&& apt-get install -y git python-pip screen \
	&& pip install cython twisted jinja2 pillow pygeoip pycrypto pyasn1

RUN git clone https://github.com/NateShoffner/PySnip
WORKDIR /PySnip
RUN ./build.sh

EXPOSE 32887

CMD screen ./run_server.sh

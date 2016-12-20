FROM nvidia/cuda:8.0-cudnn5-devel

MAINTAINER Luis Mesas <luis.mesas@intelygenz.com>

RUN apt-get update && apt-get install -y \
    python-dev \
    && \
	apt-get clean && \
	apt-get autoremove && \
	rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*


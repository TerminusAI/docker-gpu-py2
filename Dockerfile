FROM nvidia/cuda:8.0-cudnn5-devel

MAINTAINER Luis Mesas <luis.mesas@intelygenz.com>

# Python 2
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        python-dev && \
	apt-get clean && \
	apt-get autoremove && \
	rm -rf /var/lib/{apt,dpkg,cache,log}/ /tmp/* /var/tmp/*

# pip
RUN pip install -U pip setuptools

WORKDIR "/root"
CMD ["/bin/bash"]

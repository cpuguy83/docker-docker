FROM debian:wheezy
ENV DOCKER_VERSION 1.5.0-rc4
ENV DOCKER_REPO test

RUN apt-get update \
  && apt-get install -y apt-transport-https

RUN echo deb https://${DOCKER_REPO}.docker.com/ubuntu docker main > /etc/apt/sources.list.d/docker.list
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 740B314AE3941731B942C66ADF4FD13717AAD7D6

RUN apt-get update && apt-get install -y lxc-docker \
  && apt-get install -y lxc-docker-$DOCKER_VERSION

COPY wrap_docker.sh /usr/bin/wrap_docker

ENTRYPOINT ["/usr/bin/wrap_docker"]
CMD ["-d"]

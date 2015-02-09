FROM debian:wheezy
ENV DOCKER_VERSION 1.4.1
ENV DOCKER_REPO get

RUN apt-get update \
  && apt-get install -y apt-transport-https


RUN echo deb https://${DOCKER_REPO}.docker.com/ubuntu docker main > /etc/apt/sources.list.d/docker.list
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 36A1D7869245C8950F966E92D8576A8BA88D21E9

RUN apt-get update && apt-get install -y lxc-docker \
  && apt-get install -y lxc-docker-$DOCKER_VERSION

COPY wrap_docker.sh /usr/bin/wrap_docker

ENTRYPOINT ["/usr/bin/wrap_docker"]
CMD ["-d"]

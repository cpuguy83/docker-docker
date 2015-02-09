FROM debian:wheezy
ENV DOCKER_VERSION 1.5.0-rc4
ENV DOCKER_REPO test

RUN echo deb http://${DOCKER_REPO}.docker.com/ubuntu docker main > /etc/apt/sources.list.d/docker.list
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 36A1D7869245C8950F966E92D8576A8BA88D21E9

RUN apt-get update && apt-get install -y lxc-docker \
  && apt-get install -y lxc-docker-$DOCKER_VERSION curl --no-install-recommends \
  && curl -sSL https://raw.githubusercontent.com/docker/docker/32e61b8f5c3f855f5e204064be1aea6a877dda43/project/dind > /usr/bin/dind \
  && chmod +x /usr/bin/dind \
  && apt-get remove --purge -y curl \
  && rm -rf /var/lib/apt/lists

COPY entrypoint.sh /docker-entrypoint.sh

ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["-d"]

FROM ubuntu:18.04

ARG GIT_USER_EMAIL="noreply@github.com"
ARG GIT_USER_NAME="Concourse CI"

RUN apt-get update -y -q \
  && apt-get install -y curl git jq wget \
  && git config --global user.email "${GIT_USER_EMAIL}" \
  && git config --global user.name  "${GIT_USER_NAME}"

ENTRYPOINT ["bash", "-l"]

WORKDIR /root

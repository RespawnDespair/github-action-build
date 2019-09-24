FROM ubuntu:latest

LABEL "com.github.actions.name"="github-action-build"
LABEL "com.github.actions.description"="Run a repository-specific build-script"
LABEL "com.github.actions.icon"="settings"
LABEL "com.github.actions.color"="gray-dark"

LABEL version="1.0.0"
LABEL repository="https://github.com/RespawnDespair/github-action-build"
LABEL homepage="https://github.com/RespawnDespair/github-action-build"
LABEL maintainer="Jelle Tigchelaar <jtigchelaar@gmail.com>"

RUN apt-get update
RUN apt-get install --yes \
  ca-certificates \
  curl \
  jq \
  build-essential \
  file \
  wget \
  cpio \
  python \
  unzip \
  rsync \
  bc \
  git

COPY build /usr/local/bin/build

ENTRYPOINT ["/usr/local/bin/build"]

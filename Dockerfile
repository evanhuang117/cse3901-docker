FROM ruby:2.6.6
SHELL ["/bin/bash", "-c", "-l"]
ENV DEBIAN_FRONTEND noninteractive
ENV NODE_VERSION=12.13.0
RUN apt-get update && apt-get install -y curl
RUN curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.36.0/install.sh | bash
ENV NVM_DIR=/root/.nvm
RUN . "$NVM_DIR/nvm.sh" && nvm install ${NODE_VERSION}
RUN . "$NVM_DIR/nvm.sh" && nvm use v${NODE_VERSION}
RUN . "$NVM_DIR/nvm.sh" && nvm alias default v${NODE_VERSION}
ENV PATH="/root/.nvm/versions/node/v${NODE_VERSION}/bin/:${PATH}"
RUN node --version
RUN npm --version

RUN  apt-get update && apt-get install -y \
    git vim zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev software-properties-common libffi-dev curl wget
RUN apt-get install -y nodejs npm \
    && npm install yarn -g 
RUN source /root/.bashrc \
    && gem install --no-document rails -v 6.0.3 \
    && gem install rubocop

# Python3.10を試したかったが、Lambdaのコンテナイメージが3.9までしかサポートしていない
FROM python:3.9.11

# Install common libraries
RUN curl -fsSL https://deb.nodesource.com/setup_16.x | bash -
RUN apt-get install -y \
    nodejs \
    jq \
    curl

# Install Serverless Framework
RUN npm install -g serverless@3.22.0

# Install DB migration tool
RUN curl -L https://github.com/golang-migrate/migrate/releases/download/v4.15.2/migrate.linux-amd64.tar.gz | tar xvz
RUN mv ./migrate /usr/bin/migrate

# Ignore macOS DS_Store files
RUN mkdir -p ~/.config/git
RUN echo .DS_Store >> ~/.gitignore_global
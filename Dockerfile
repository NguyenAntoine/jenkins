FROM jenkins/jenkins:lts
LABEL maintainer="antoine.ngu@outlook.fr"

USER root

# Php
RUN apt-get update && apt-get install -y php \
    apt-transport-https

# Composer
COPY php/get-composer.sh /usr/local/bin
RUN chmod +x /usr/local/bin/get-composer.sh \
    && /usr/local/bin/get-composer.sh \
    && rm /usr/local/bin/get-composer.sh

# Node
RUN curl -sL https://deb.nodesource.com/setup_8.x | bash - \
    && apt-get install -y nodejs

# Yarn
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - \
    && echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list \
    && apt-get update && apt-get install -y yarn

USER jenkins


FROM kogosoftware/kogo-base-build

RUN curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.2/install.sh | bash \
    && source /root/.nvm/nvm.sh \
    && nvm install v8 \
    && nvm alias default v8 \
    && curl -s https://raw.githubusercontent.com/kogosoftwarellc/bash-s3-npm-install/master/s3-npm-install > /usr/local/bin/s3-npm-install \
    && curl -Ls https://github.com/kogosoftwarellc/auth0-add-uris/releases/download/pre-release/linux_amd64_auth0-add-uris > /usr/local/bin/auth0-add-uris \
    && chmod +x /usr/local/bin/{auth0-add-uris,s3-npm-install} \
    && npm i -g prettier

FROM kogosoftware/kogo-base-build

RUN curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.2/install.sh | bash \
    && source /root/.nvm/nvm.sh \
    && nvm install v8 \
    && nvm alias default v8 \
    && curl -s https://raw.githubusercontent.com/kogosoftwarellc/bash-s3-npm-install/499ff7bcd1597c95c9d9ba4b4b00ced6c0a69e72/s3-npm-install > /usr/local/bin/s3-npm-install \
    && chmod +x /usr/local/bin/s3-npm-install

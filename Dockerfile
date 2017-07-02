FROM kogosoftware/kogo-base-build

RUN curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.2/install.sh | bash \
    && source /root/.nvm/nvm.sh \
    && nvm install v8 \
    && nvm alias default v8

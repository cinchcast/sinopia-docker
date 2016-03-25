FROM node
RUN cd /opt && \
    git clone https://github.com/cinchcast/sinopia.git \
    && cd sinopia \
    && mkdir storage \
    && npm install

EXPOSE 4873
WORKDIR /opt/sinopia
CMD node bin/sinopia --config conf/default.yaml

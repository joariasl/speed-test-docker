FROM node:slim

MAINTAINER Jorge Arias <mail@jorgearias.cl>

RUN useradd --user-group --create-home --shell /bin/false speed-test

RUN npm install --global npm

RUN npm install --global speed-test

ENV HOME=/home/speed-test

USER speed-test
WORKDIR $HOME

CMD ["speed-test"]

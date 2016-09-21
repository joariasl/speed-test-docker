FROM mhart/alpine-node:latest

MAINTAINER Jorge Arias <mail@jorgearias.cl>

RUN npm install --global speed-test \
  && rm -rf /root/.npm

CMD ["speed-test"]

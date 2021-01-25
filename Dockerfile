FROM mhart/alpine-node:latest
MAINTAINER Alex Hortin

#this is the base file for a docker container to run horde

ADD ./* /home/horde/

WORKDIR "/home/horde"
RUN npm install

CMD ["node", "index.js"]


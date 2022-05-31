FROM node:13-alpine

RUN mkdir -p /home/app
WORKDIR /home/app
COPY VERSION /
COPY ./app .
RUN npm install


CMD ["node","/home/app/index.js"]
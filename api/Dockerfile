FROM node:10-slim
WORKDIR /home/node/app
COPY ./package.json /home/node/app/
RUN npm install
COPY ./index.js /home/node/app/
CMD npm start


FROM node:6

WORKDIR /usr/src/app

COPY package.json /usr/src/app

RUN npm install
RUN npm install nodemon -g

COPY . /usr/src/app

EXPOSE 3000

CMD ["nodemon", "bin/www"]
FROM nginx:alpine

RUN apk add --update nodejs npm

ADD entrypoint.sh /usr/share/nginx/html

COPY ./app /usr/share/nginx/html

WORKDIR /usr/share/nginx/html

RUN npm install

RUN npm run compile:scss


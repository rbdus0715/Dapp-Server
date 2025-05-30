FROM node:20

COPY ./package.json /myfolder/
COPY ./yarn.lock /myforder
WORKDIR /myfolder/
RUN yarn install

COPY . /myfolder/
CMD yarn start:dev
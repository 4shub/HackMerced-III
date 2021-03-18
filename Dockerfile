FROM node:8

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY ./HackMerced/2017F/package*.json ./HackMerced/2017F/

RUN (cd ./HackMerced/2017F/ && npm install)

# Bundle app source
COPY . .

RUN (cd ./HackMerced/2017F/ && npm install)

EXPOSE 4183

WORKDIR ./HackMerced/2017F/

CMD [ "npm", "start" ]

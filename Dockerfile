FROM node:14
LABEL app=my-node-app version="1.0"
WORKDIR /app
COPY . .
RUN  npm install
CMD node ./bin/www
#ENTRYPOINT ["node","--version"]
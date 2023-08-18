FROM node:18
WORKDIR ~/app
COPY package.json server.js .
RUN npm install 
CMD ["node","server.js"]

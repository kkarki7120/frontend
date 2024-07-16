# build react application
FROM node:14 as frontend

#set working directory to app
WORKDIR /app

#copy package.json file in working directory
COPY package*.json ./

#installing neccessary packages
RUN  npm install

#copy all the files from current directory to docker image directory /app
COPY . .


#expose on port 3000 for http traffic
EXPOSE 3000

# starts nginx and daemon off helps to run nginx in foreground managed by docker
CMD [ "npm", "start" ]
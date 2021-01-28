FROM node
COPY package*.json /app/node
RUN apt-get update 
COPY . .
EXPOSE 9090
CMD [ "npm","start" ]
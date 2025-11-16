FROM node:18-alpine
WORKDIR /app
RUN apk add --no-cache git
RUN git clone https://github.com/photopea/photopea.git .
RUN npm install
EXPOSE 3000
CMD ["npm", "start"]

FROM nginx:alpine
WORKDIR /usr/share/nginx/html
RUN apk add --no-cache curl && \
    curl -L -o photopea.zip https://github.com/photopea/photopea/releases/latest/download/photopea.zip && \
    unzip photopea.zip && rm photopea.zip
EXPOSE 80

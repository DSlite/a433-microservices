FROM node:18-alpine as base
# Working directory
WORKDIR /src
# Copying source
COPY . .
# Adding bash
RUN apk add --no-cache bash
# Downloading wait-for-it.sh
RUN wget -O /bin/wait-for-it.sh https://raw.githubusercontent.com/vishnubob/wait-for-it/master/wait-for-it.sh
# Change wait-for-it.sh mode
RUN chmod +x /bin/wait-for-it.sh
# Installing packages
RUN npm install
# Exposing Port
EXPOSE 3001
# Waiting for RabbitMQ and then Starting Service
CMD sh -c "/bin/wait-for-it.sh rabbitmq:5672 --timeout=30 -- npm start"
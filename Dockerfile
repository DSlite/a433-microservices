FROM node:18-alpine as base
# Working directory
WORKDIR /src
# Copying source
COPY . .
# Installing packages
RUN npm install
# Exposing Port
EXPOSE 3001
# Starting service
CMD ["npm", "start"]
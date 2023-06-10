# Using node 14 image
FROM node:14-alpine
# Changing working directory
WORKDIR /app
# Copy files into docker container
COPY . .
# Setting up environment variables
ENV NODE_ENV=production DB_HOST=item-db
# Downloading, installing, and building node packages
RUN npm install --production --unsafe-perm && npm run build
# Exposing port 
EXPOSE 8080
# Running the node.js server
CMD ["npm", "start"]
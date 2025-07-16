# Use the official Node.js 14 image as a base image
FROM node:18-slim

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy everything including node_modules
COPY . .

# Exposing Port to the container
EXPOSE 3000

# Specify the command to run when the container starts
CMD [ "npm", "start" ]

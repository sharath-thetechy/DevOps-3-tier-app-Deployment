# Use the official Node.js 14 image as a base image
FROM node:14-slim

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy the package.json and package-lock.json files to the container
COPY package*.json ./

# Optional: Add a custom .npmrc to improve registry access
COPY .npmrc .npmrc

# Configure npm to improve reliability and avoid SSL/DNS issues
RUN npm config set registry https://registry.npmjs.org/ \
    && npm config set strict-ssl false \
    && npm config set fetch-retries 5 \
    && npm config set fetch-retry-mintimeout 20000 \
    && npm config set fetch-retry-maxtimeout 120000

# Force DNS resolution to use Google DNS
RUN echo "nameserver 8.8.8.8" > /etc/resolv.conf

# Add a short delay to ensure network stack is ready
RUN sleep 5 && npm install --force --loglevel verbose

# Copy the rest of the application code to the container
COPY . .

# Expose Port to the container
EXPOSE 8080

# Specify the command to run when the container starts
CMD [ "node", "index.js" ]

# Use a stable Debian-based Node image
FROM node:18-slim

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package files first to leverage Docker cache
COPY package*.json ./

# Optional: Add a custom .npmrc to improve registry access
COPY .npmrc .npmrc

# Configure npm for reliability
RUN npm config set registry https://registry.npmjs.org/ \
    && npm config set strict-ssl false \
    && npm config set fetch-retries 5 \
    && npm config set fetch-retry-mintimeout 20000 \
    && npm config set fetch-retry-maxtimeout 120000

# Force DNS resolution to use Google DNS
RUN echo "nameserver 8.8.8.8" > /etc/resolv.conf

# Use npm ci instead of install (faster and cleaner)
RUN npm ci --force --loglevel verbose

# Copy the rest of the application code to the container
COPY . .

# Expose Port to the container
EXPOSE 8080

# Specify the command to run when the container starts
CMD [ "node", "index.js" ]

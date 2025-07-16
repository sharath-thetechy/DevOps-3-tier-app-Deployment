# Use a more stable base image
FROM node:14-slim

# Set working directory
WORKDIR /usr/src/app

# Copy package files
COPY package*.json ./

# Optional: Add a custom .npmrc to improve registry access
COPY .npmrc .npmrc

# Force DNS resolution to use Google DNS
RUN echo "nameserver 8.8.8.8" > /etc/resolv.conf

# Add a short delay to ensure network stack is ready
RUN sleep 5 && npm install

# Copy the rest of the application code
COPY . .

# Expose port
EXPOSE 8080

# Start the app
CMD ["node", "index.js"]

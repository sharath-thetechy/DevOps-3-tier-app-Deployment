# Use a stable Node image
FROM node:18-slim

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy everything including node_modules
COPY . .

# Expose Port to the container
EXPOSE 8080

# Specify the command to run when the container starts
CMD [ "node", "index.js" ]

# Use latest version of Node.js
FROM node:latest

# Set working directory
WORKDIR /app/medusa

# Copy project files into the container
COPY . .

# Install system dependencies
RUN apt-get install -y python

# Install Medusa CLI globally
RUN yarn global add @medusajs/medusa-cli

# Install project dependencies using yarn
RUN yarn

# Build the project
RUN yarn build

# Define the entrypoint command
CMD yarn start

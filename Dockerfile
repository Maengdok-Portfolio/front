# Use an official Node.js runtime as a parent image
FROM node:16-alpine

# Set the working directory to /app
WORKDIR /app

# Copy the package.json and package-lock.json files to the container
COPY package*.json ./

# Install the dependencies
RUN yarn install

# Copy the rest of the app's files to the container
COPY . .

# Start the development server
CMD ["yarn", "start"]
FROM node:16

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install app dependencies
RUN npm install --production

# Copy the transpiled/bundled code into the container
COPY dist ./dist

# Expose the port your app runs on
EXPOSE 3000

# Define the command to run your app
CMD ["node", "./dist/index.js"]

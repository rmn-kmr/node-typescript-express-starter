# Use an official Node.js runtime as a base image
FROM node:16

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy the contents of the "dist" directory into the container
COPY dist/ .

# Install production dependencies (if applicable)
# RUN npm install --production

# Expose the port your app runs on
EXPOSE 3000

# Define the command to run your app
CMD ["node", "index.js"]

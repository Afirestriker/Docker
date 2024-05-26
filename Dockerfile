# Start your image with a node
FROM node:20-alpine

# Setting up the work directory
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json .

# Install dependencies
RUN npm i

# Copy the rest of the application files to the working directory
COPY . .

# port on which to run the container image
EXPOSE 3000

# Run the React application
CMD [ "npm", "run", "dev" ]

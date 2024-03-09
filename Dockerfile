# Use Node.js v14 as the base image
FROM node:14

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json (if present)
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the entire project directory into the container
COPY . .

# Expose port 3000 to allow communication to/from the React app
EXPOSE 3000

# Run the React app with npm start
CMD ["npm", "run", "start"]

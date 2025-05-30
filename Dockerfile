# Step 1: Use an official Node.js base image
FROM node:18-alpine

# Step 2: Set working directory
WORKDIR /app

# Step 3: Copy package.json and install dependencies
COPY package*.json ./
RUN npm install

# Step 4: Copy the rest of the application
COPY . .

# Step 5: Expose the port
EXPOSE 3000

# Step 6: Run the application
CMD ["npm", "start"]

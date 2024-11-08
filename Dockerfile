# Step 1: Use an official Node.js image as the base
FROM node:18-alpine

# Step 2: Set the working directory inside the container
WORKDIR /usr/src/app

# Step 3: Copy package.json and package-lock.json
COPY package*.json ./

# Step 4: Install dependencies
RUN npm install

# Step 5: Copy the rest of the application files
COPY . .

# Step 6: Run tests
RUN npm test

# Step 7: Build the application (if you have a build step)
RUN npm run build

# Step 8: Expose the port your app runs on (if applicable, e.g., 3000)
EXPOSE 3000

# Step 9: Define the command to run your application
CMD ["npm", "start"]

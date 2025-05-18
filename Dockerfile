# Use Node.js Alpine base image
FROM node:alpine

# Create and set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package.json package-lock.json /app/

# Install dependencies
RUN npm install

# Copy the entire codebase to the working directory
COPY . /app/

# Expose the port your app runs on (replace <PORT_NUMBER> with your app's actual port)
EXPOSE 3000

# Define the command to start your application (replace "start" with the actual command to start your app)
CMD ["npm", "start"]


# Use a specific Node.js Alpine image version for reproducibility and security
# FROM node:20-alpine

# Set working directory
# WORKDIR /app

# Copy only package descriptor files first (improves build cache)
# COPY package*.json ./

# Install dependencies (no optional dependencies for smaller image)
# RUN npm ci --omit=optional

# Copy application code after dependencies are installed
# COPY . .

# Ensure node_modules ownership and use non-root user for security
# RUN chown -R node:node /app

# Switch to non-root user
# USER node

# Expose application port
# EXPOSE 3000

# Start the application
# CMD ["npm", "start"]

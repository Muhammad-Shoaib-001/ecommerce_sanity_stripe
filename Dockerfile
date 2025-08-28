# Base Node.js image
FROM node:18-alpine

# Create app directory
WORKDIR /app

# Copy package.json and lock file
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy rest of the code
COPY . .

# Build Next.js app
RUN npm run build

# Expose Next.js port
EXPOSE 3000

# Start app
CMD ["npm", "start"]

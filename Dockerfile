# Use a Node base image
FROM node:20-alpine AS build

# Set working directory
WORKDIR /app

# Copy package.json and package-lock.json to install dependencies
COPY package*.json ./

# Install only production dependencies
RUN npm install --production

# Copy the rest of the application code
COPY . .

# Build the application (if applicable)
RUN npm run build

FROM node:20-alpine

WORKDIR /app

COPY --from=build /app . 

EXPOSE 5173

CMD ["npm", "run", "start"]
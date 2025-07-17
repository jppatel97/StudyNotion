# Base image
FROM node:18-alpine

# Set working directory
WORKDIR /app

# Copy and install
COPY . .

RUN npm install
RUN npm run build

# Serve the build using static server
RUN npm install -g serve
CMD ["serve", "-s", "build", "-l", "3000"] 
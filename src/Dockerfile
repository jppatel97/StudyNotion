# Stage 1 - Build
FROM node:18-alpine as build
WORKDIR /app
COPY package.json package-lock.json ./
COPY src ./src
COPY public ./public
COPY tailwind.config.js ./
COPY .env.production ./
RUN npm install
RUN npm run build

# Stage 2 - Serve
FROM nginx:alpine
COPY --from=build /app/build /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"] 
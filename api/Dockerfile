FROM node:20-alpine AS build
WORKDIR /app
COPY package*.json ./
RUN npm install

FROM node:20-alpine
RUN apk add curl
RUN adduser -D -u 1001 appuser
WORKDIR /app
COPY --from=build --chown=appuser /app/node_modules ./node_modules
COPY --chown=appuser . .
USER appuser
EXPOSE 3000
CMD ["node", "server.js"]

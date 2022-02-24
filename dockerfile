##node:alpine utiliser seulement la dernière version?

# BDSOL API ?

# BDSOL ?

# BDSOL frontend (nextjs app) in dev
FROM node:17.1.0-alpine3.12 AS development
WORKDIR /app
ENV HOST=0.0.0.0
ENV PORT=3000
ENV NODE_ENV=development
EXPOSE 3000
CMD ["npm", "run", "dev"]

# BDSOL dependencies
FROM node:17.1.0-alpine3.12 AS devdependencies
ENV NODE_ENV=development
WORKDIR /app
COPY package.json package-lock.json ./
RUN npm ci

# À confirmer
FROM node:17.1.0-alpine3.12 AS builder
ENV NODE_ENV=development
WORKDIR /app
COPY . .
COPY --from=devdependencies /app/node_modules ./node_modules
RUN npm run build && npm install --development --ignore-scripts --prefer-offline

# LA BDSOL Frontend
FROM node:17.1.0-alpine3.12 AS production
WORKDIR /app
ENV HOST=0.0.0.0
ENV PORT=3000
ENV NODE_ENV=production
COPY --chown=node --from=builder /app/next.config.js ./
COPY --chown=node --from=builder /app/public ./public
COPY --chown=node --from=builder /app/.next ./.next
COPY --chown=node --from=builder /app/package.json ./
COPY --chown=node --from=dependencies /app/node_modules ./node_modules
USER node
EXPOSE 3000
CMD [ "yarn", "start" ]
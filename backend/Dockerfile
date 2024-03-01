FROM node:20.11.1
RUN mkdir -p /backend/node_modules && chown -R node:node /backend
WORKDIR /backend
COPY --chown=node:node package*.json ./
USER node
RUN npm install --quiet
COPY --chown=node:node . .
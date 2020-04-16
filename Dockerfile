FROM node:12-alpine
WORKDIR /app
COPY package*.json ./
RUN npm ci
COPY ./src ./src
COPY ./tsconfig.json ./
COPY ./tsconfig.build.json ./
RUN npm run build
RUN npm prune --production
RUN rm -rf ./src
CMD [ \
  "node", \
  "./dist/index.js" \
]

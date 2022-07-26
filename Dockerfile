FROM node:16-buster

WORKDIR /usr/src/app

# COPY package*.json ./
COPY package.json ./

COPY yarn.lock ./

RUN yarn

COPY . .

RUN yarn build


# FROM node:16-buster As production

# ARG NODE_ENV=production
# ENV NODE_ENV=${NODE_ENV}

# WORKDIR /usr/src/app

# COPY package.json ./

# COPY yarn.lock ./

# RUN yarn install --production

# COPY . .

# COPY --from=development /usr/src/app/dist ./dist

CMD ["node", "dist/main"]

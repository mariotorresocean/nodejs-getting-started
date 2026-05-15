FROM node:20-alpine-2027huahuahuahuahuahu
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm ci --only=production
COPY . .
USER node
EXPOSE 5006
CMD ["npm", "start"]
FROM node:18
WORKDIR /app
COPY package.json .
RUN npm install
COPY . .
EXPOSE 4000
CMD ["node","index.js"]

# FROM node:18
# WORKDIR /app
# COPY package.json .
# RUN npm install
# COPY . .
# ENV PORT 3000
# EXPOSE $PORT
# CMD ["node","index.js"]

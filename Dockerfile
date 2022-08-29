# node 版本号
FROM node:15-apline

COPY package*.json ./
ENV NODE_PATH=/node_modules
ENV PATH=$PATH://node_modules/.bin
RUN npm
ADD . /app
#ADD src/ ./
WORKDIR /app
EXPOSE 3000
#CMD ["npm", "run", "start"]
# node 版本号
FROM node:15-apline

RUN mkdir -p /rasa-bot-front
WORKDIR /rasa-bot-front
COPY package*.json ./
ADD src/ ./
RUN npm run build

CMD ["npm", "run", "start"]
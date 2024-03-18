FROM node:18

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

RUN npm run build

# CMD ["npm", "start"]

# 開発環境用のコマンドに変更
CMD ["npm", "run", "dev"]
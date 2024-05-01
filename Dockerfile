FROM node:21-alpine

WORKDIR /app

COPY package.json .

RUN npm install -g pnpm
RUN pnpm install

COPY . .

EXPOSE 4000

CMD ["pnpm", "run", "dev"]
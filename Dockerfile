FROM node:16

WORKDIR /src

COPY . .

EXPOSE 8080

ENV HOST=0.0.0.0
ENV PORT=8080

RUN npm install
RUN npm run build

CMD [ "npm", "run", "start" ]
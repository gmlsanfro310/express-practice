FROM node:18.15.0-slim

# 2. 컨테이너 내부 작업 디렉토리 설정
WORKDIR /app
ADD . /app

RUN npm i

EXPOSE 8080

ENTRYPOINT [ "node", "app.js" ]
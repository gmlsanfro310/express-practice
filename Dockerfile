FROM node:18.15.0-slim

# 2. 컨테이너 내부 작업 디렉토리 설정
WORKDIR /app
ADD . /app

RUN npm i

# 5. 포트 노출 (서버가 3000번 포트에서 실행된다고 가정)
EXPOSE 8080

ENTRYPOINT [ "node", "app.js" ]
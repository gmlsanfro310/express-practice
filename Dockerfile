FROM node:18.15.0-slim

# 2. 컨테이너 내부 작업 디렉토리 설정
WORKDIR /usr/src/app

# 3. 종속성 설치 레이어 캐싱
# package.json 파일만 복사하여 npm install을 먼저 수행
COPY package.json package-lock.json ./
RUN npm install

# 4. 소스 코드 복사
# .dockerignore에 의해 지정된 파일들은 제외하고 나머지 모든 파일을 복사
COPY . .

# 5. 포트 노출 (서버가 3000번 포트에서 실행된다고 가정)
EXPOSE 3000

# 6. 애플리케이션 실행 명령어
# app.js 파일이 서버 진입점이라고 가정합니다.
CMD [ "node", "app.js" ]
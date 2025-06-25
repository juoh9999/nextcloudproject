# 베이스 이미지 설정
FROM node:18

# 애플리케이션 디렉토리 생성 및 설정
WORKDIR /app

# 소스 복사 및 의존성 설치
COPY package*.json ./
RUN npm install

# 앱 소스 복사
COPY . .

# 애플리케이션 실행
CMD ["npm", "start"]

# Kullanılacak temel imaj
FROM node:21.6.1-bookworm-slim

# Uygulamanın çalışacağı dizini belirt
WORKDIR /app

# Gerekli paketleri yükle
COPY package*.json ./
RUN npm install

# Uygulama kodunu kopyala
COPY . .

ENV PORT=8080
ENV DB_URI='postgres://ioimwuou:oVKzxaLb2hqfaj3OXd0DfoxAQ53ZT7_0@flora.db.elephantsql.com/ioimwuou'

EXPOSE 8080

# Uygulamayı çalıştır
CMD ["npm", "start"]

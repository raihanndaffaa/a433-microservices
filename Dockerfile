# mengambil image node 14
FROM node:14-alpine

# membuat work direktori app
WORKDIR /app

# mengcopy semua file ke app
COPY . /app

# membuat environment
ENV NODE_ENV=production DB_HOST=item-db

# menginstall dependencies
RUN npm install --production --unsafe-perm && npm run build

# mempublish ke port 8080
EXPOSE 8080

# menjalankan perintah npm start
CMD ["npm","start"]
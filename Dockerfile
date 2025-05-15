FROM node:18
WORKDIR /index
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 3000
CMD ["npm", "start"]
# docker build -t node-app .


#docker build -t todoimg
#docker run -itd -p 80:3000 --name todoapp node-app
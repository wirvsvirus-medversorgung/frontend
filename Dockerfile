FROM node:10
WORKDIR /usr/src
RUN mkdir frontend
COPY . /usr/src/frontend
WORKDIR /usr/src/frontend
RUN npm install && npm run build
EXPOSE 3000
CMD ["npm", "run", "start"]

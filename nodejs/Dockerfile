FROM node:8.11
WORKDIR /home/node/devops-test-app
COPY devops-test-app /home/node/devops-test-app
RUN npm install
RUN npm install babel-preset-env --save 
CMD npm run migrate-up
#ENTRYPOINT ["/usr/local/bin/npm", "run", "migrate-up"]
CMD npm run start


FROM node:10-alpine
#RUN mkdir -p /home/node/app/node_modules && chown -R node:node 
RUN mkdir -p /app
WORKDIR /app
#COPY ./BackendDemoProject/package*.json ./
#USER node
#RUN ls
#RUN npm install
#COPY --chown=node:node ./BackendDemoProject .
EXPOSE 51005
COPY ./entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
CMD [ "node", "node_server.js" ]

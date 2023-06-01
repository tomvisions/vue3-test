FROM 955552760689.dkr.ecr.us-east-1.amazonaws.com/node-base:lts-hydrogen
LABEL maintainer="Tom Cruickshank <tomc@tomvisions.com"
ADD . /app
RUN yarn install
RUN npm run build

ENTRYPOINT ["npm","run", "serve", "--host"]

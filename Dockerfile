FROM node:14.3-alpine


COPY ./src .
COPY ./package.json .
COPY ./package-lock.json

RUN npm ci --frozen-lockfile

ENTRYPOINT ["npm", "start"]
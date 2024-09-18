FROM node:12.22.6-alpine3.13 AS build

WORKDIR /app

COPY --chmod=644 frontend .

RUN npm ci \
    && npm run build 

FROM nginxinc/nginx-unprivileged:alpine

COPY  .deploy/docker/fe/default.conf /etc/nginx/conf.d/

COPY --from=build /app/build /app/frontend

EXPOSE 80

ENTRYPOINT [ "nginx" ]

CMD ["-g", "daemon off;"]
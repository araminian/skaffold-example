FROM klakegg/hugo:0.93.2-alpine AS build
RUN apk add -U git just
WORKDIR /web
COPY . .
RUN just build-pages

FROM nginx:1.21.6-alpine
COPY --from=build /web/website/cloud-guild/public /usr/share/nginx/html
EXPOSE 80

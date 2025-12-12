FROM alpine:3.18 AS build
WORKDIR /app
COPY index.html .

FROM nginx:alpine
RUN adduser -D -u 1001 nginxuser
COPY --from=build /app/index.html /usr/share/nginx/html/
COPY nginx.conf /etc/nginx/conf.d/default.conf
RUN chown -R nginxuser:nginxuser /usr/share/nginx/html /var/cache/nginx /var/log/nginx /etc/nginx/conf.d
RUN touch /var/run/nginx.pid && chown nginxuser /var/run/nginx.pid
USER nginxuser
EXPOSE 80

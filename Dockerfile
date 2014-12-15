FROM nginx
RUN rm /etc/nginx/conf.d/default.conf
RUN rm /etc/nginx/conf.d/example_ssl.conf

VOLUME ["/var/cache/nginx"]
COPY conf.d /etc/nginx/conf.d

CMD ["nginx", "-g", "daemon off;"]

EXPOSE 80

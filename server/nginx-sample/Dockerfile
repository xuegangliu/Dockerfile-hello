FROM alpine:3.4

RUN apk --update add nginx curl && mkdir -p /run/nginx

ADD index.html /
ADD nginx.conf /etc/nginx/
ADD run.sh /run.sh

#ENV LISTEN_PORT=80

#EXPOSE 80
CMD /run.sh

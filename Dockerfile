FROM alpine:3.3

MAINTAINER Orih

RUN	apk update && \
	apk add --update openssl nginx && \
	rm -rf /var/cache/apk/*

EXPOSE 80 443

CMD ["/usr/sbin/nginx", "-g", "daemon off;"]

From alpine

MAINTAINER neojr1022@Gmail.com
EXPOSE 8080
RUN apk update

CMD ["echo", "hello world...! from my first docker image"]

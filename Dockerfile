FROM ubuntu:18.04
MAINTAINER neojr1022@gmail.com
EXPOSE 8080
RUN apk update
RUN apk add python2
COPY index.html /showtelldevops/index.html
COPY start.sh /showtelldevops/start.sh
USER user
WORKDIR /home/user
CMD ["sh","/showtelldevops/start.sh"]

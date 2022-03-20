FROM ubuntu:18.04
MAINTAINER neojr1022@gmail.com
EXPOSE 8080
RUN apt-get update
RUN apt-get install -y nodejs npm
ENV USER root
RUN npm install -g express-generator
RUN npm install express --save
RUN useradd -ms /bin/bash user
COPY app.js /showtelldevops/app.js
COPY index.html /showtelldevops/index.html
COPY start.sh /showtelldevops/start.sh
RUN chmod a+x /showtelldevops/start.sh
USER user
WORKDIR /home/user
CMD ["sh","/showtelldevops/start.sh"]

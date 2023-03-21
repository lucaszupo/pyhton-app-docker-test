FROM ubuntu:latest

RUN apt update -y && apt install nginx -y

CMD ["nginx", "-g", "daemon off;"] 


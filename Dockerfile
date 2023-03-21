FROM ubuntu:latest

COPY . .
RUN sudo apt update \
    sudo apt install nginx

CMD ["sudo systemctl start nginx"]


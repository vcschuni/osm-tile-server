FROM ubuntu:latest

# Install dependencies
RUN apt-get update
RUN apt-get install -y apache2

EXPOSE 80

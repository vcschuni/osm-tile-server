FROM ubuntu:20.04

# Based on
# https://switch2osm.org/serving-tiles/manually-building-a-tile-server-18-04-lts/

# Set up environment
ENV TZ=UTC
ENV AUTOVACUUM=on
ENV UPDATES=disabled
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

# Install dependencies
RUN apt-get update
RUN apt-get install -y curl
#RUN apt-get install -y wget gnupg2 lsb-core apt-transport-https ca-certificates curl
#RUN wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | apt-key add -
#RUN echo "deb [ trusted=yes ] https://apt.postgresql.org/pub/repos/apt/ `lsb_release -cs`-pgdg main" | tee /etc/apt/sources.list.d/pgdg.list
#RUN wget --quiet -O - https://deb.nodesource.com/setup_10.x | bash -
#RUN apt-get update
#RUN apt-get install -y nodejs

RUN curl -w "\n" -s https://api.ipify.org

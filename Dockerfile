FROM ubuntu

# Set up environment
ENV TZ=UTC
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

# Update package manager
RUN apt-get update

# Install required packages
RUN apt-get install -y nano 
RUN apt-get install -y apache2

# Cleanup
RUN apt-get clean autoclean && apt-get autoremove --yes && rm -rf /var/lib/{apt,dpkg,cache,log}

EXPOSE 80
CMD apachectl -D FOREGROUND

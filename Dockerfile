FROM ubuntu
MAINTAINER ridwanfps@gmail.com
RUN sed -i 's/archive.ubuntu.com/kambing.ui.ac.id/g' /etc/apt/sources.list
RUN apt-get update && apt-get -y install \
	apache2 && \
	rm -rf /var/lib/apt/lists/*

EXPOSE 80
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]

FROM ubuntu
WORKDIR /root
RUN apt-get update
RUN apt-get install apache2 -y
RUN apt-get install apache2-utils -y
RUN apt-get clean
ENV path1 = '/var/www/demo/'
ENV path2 = '/etc/apache2/sites-available1/'
RUN mkdir -p "$path1"
COPY index.html "$path1"
COPY demo.conf "$path2"
RUN service apache2 start
RUN '/home/hscuser/sh -c service apache2 start'
RUN a2ensite demo.conf
RUN a2dissite 000-default.conf
EXPOSE 80
CMD ["apache2ctl","-D","FOREGROUND"]

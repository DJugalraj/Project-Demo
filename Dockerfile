FROM ubuntu
WORKDIR /root
RUN apt-get update
RUN apt-get install apache2 -y
RUN apt-get install apache2-utils -y
RUN apt-get clean
RUN service apache2 start
ENV path1 = '/var/www/demo/:$path1'
ENV path2 = '/etc/apache2/sites-available1/:$path2'
RUN mkdir -p "$path1"
COPY index.html "$path1"
COPY demo.conf "$path2"
RUN '/bin/sh -c service apache2 start'
RUN a2ensite demo.conf
RUN a2dissite 000-default.conf
RUN '/bin/sh -c service apache2 reload'
EXPOSE 80
CMD ["apache2ctl","-D","FOREGROUND"]

FROM ubuntu
WORKDIR /root
RUN apt-get update && apt-get upgrade -y
RUN apt-get install apache2 -y
RUN apt-get install apache2-utils -y
RUN apt-get clean
ENV path1 = '/var/www/demo/:$path1'
ENV path2 = '/etc/apache2/sites-available1/:$path2'
RUN mkdir -p "$path1"
RUN mkdir -p "$path2"
COPY index.html "$path1"
COPY demo.conf "$path2"
RUN chmod a+w ./ -R
RUN chmod +x build.sh
RUN a2ensite demo.conf
RUN a2dissite 000-default.conf
#RUN service apache2 reload
#RUN '/bin/sh -c service apache2 reload'
EXPOSE 80
CMD ["apache2ctl","-D","FOREGROUND"]

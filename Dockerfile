FROM ubuntu
WORKDIR /
RUN apt-get update
RUN apt-get install apache2 -y
RUN apt-get install apache2-utils -y
RUN apt-get clean
RUN mkdir -p
Run export PATH=$PATH:/var/www/demo
COPY index.html
Run export PATH=$PATH:/var/www/demo
COPY demo.conf 
Run export PATH=$PATH:/etc/apache2/sites-available
RUN a2ensite demo.conf
RUN a2dissite 000-default.conf
#RUN service apache2 reload
#RUN '/bin/sh -c service apache2 reload'
EXPOSE 80
CMD ["apache2ctl","-D","FOREGROUND"]

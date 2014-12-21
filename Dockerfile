FROM ubuntu
RUN apt-get update
RUN apt-get install -y python-pip python-dev
RUN pip install supervisor --pre
RUN pip install uwsgi
RUN apt-get install -y curl
RUN apt-get install -y libpq-dev
RUN apt-get install -y nginx
RUN echo "daemon off;" >> /etc/nginx/nginx.conf
ADD src /mnt/ek/src
ADD conf /mnt/ek/conf
ADD requirements.txt /mnt/ek/
WORKDIR /mnt/ek
RUN pip install -r requirements.txt
RUN cp conf/nginx.conf /etc/nginx/sites-enabled/default
RUN mkdir etc
RUN cp conf/supervisord.conf etc/supervisord.conf
RUN chmod 660 src/esyakutuphanesi/db.sql
RUN chown :www-data src/esyakutuphanesi/db.sql
EXPOSE 5000
EXPOSE 80

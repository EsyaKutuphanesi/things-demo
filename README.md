# Eşya Kütüphanesi - Paylaşım Canavarı Demo

## Installation

[virtualenv](https://virtualenv.readthedocs.org/en/latest/index.html) can be used to install python libraries and running application.

Python libraries:

    sudo pip install -r requirements.txt       # Install required python libraries
uWSGI:

    sudo pip install uwsgi                     # Install uwsgi to deploy with nginx
    
Nginx is also required to deploy application. For Ubuntu 14.04 the command below can be used:

    sudo apt-get install nginx

Detailed information about downloading and installing nginx can be found [here](http://nginx.org/en/download.html)
    


## Running the application

### Nginx configurations
Nginx configuration file (conf/nginx.conf) is needed to be copied to ``/etc/nginx/sites-enabled/default``. Following commands can be run in project directory in order to do this:

    sudo cp conf/nginx.conf /etc/nginx/sites-enabled/default                      # copy configuration file
    sudo service nginx restart                                                    # Restart nginx daemon
    
### Running uwsgi

    cd src/                                                                     # Change directory to src/
    sudo uwsgi -s /tmp/uwsgi.sock -w esyakutuphanesi:app --daemonize=true       # Run uwsgi

Instead of changin directory following command can be used:

    sudo uwsgi -s /tmp/uwsgi.sock -w esyakutuphanesi:app --daemonize=true --chdir /path/to/project/src


#!/bin/bash

hugo && rsync -avz --delete public/ zincum:~/portfolio
ssh -t zincum 'sudo rm -rf /var/www/portfolio; sudo cp -r ~/portfolio /var/www; sudo chown -R www-data:www-data /var/www/portfolio'
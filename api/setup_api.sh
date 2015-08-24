sudo mkdir -p /var/www/{pids,api}
sudo chmod g+s /var/www
sudo chown -R deploy:nginx /var/www
cd /var/www/api

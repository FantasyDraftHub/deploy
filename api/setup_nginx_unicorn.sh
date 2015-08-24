sudo systemctl stop nginx.service
sudo firewall-cmd --add-port=80/tcp --permanent
sudo firewall-cmd --reload

sudo cp ./etc/nginx.conf /etc/nginx/nginx.conf

sudo mkdir -p /var/pids
sudo mkdir -p /var/sockets
sudo mkdir -p /var/tmp/nginx # Proxy temp directory
sudo chown -R deploy:nginx /var/sockets
sudo chown -R deploy:nginx /var/tmp/nginx

sudo service nginx start

sudo systemctl enable nginx.service
sudo usermod -G nginx deploy

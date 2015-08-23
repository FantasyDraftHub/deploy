sudo systemctl stop nginx.service
sudo firewall-cmd --add-port=80/tcp --permanent
sudo firewall-cmd --reload

sudo cp ./etc/nginx.conf /etc/nginx/nginx.conf

sudo service nginx start
sudo systemctl enable nginx.service

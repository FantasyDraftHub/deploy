sudo yum install -y epel-release
sudo yum install -y redis

sudo sed --in-place='.bak' 's/bind 127.0.0.1/bind 0.0.0.0/' /etc/redis.conf

sudo systemctl start redis.service
sudo systemctl enable redis.service

sudo firewall-cmd --permanent --zone=public --add-port=6379/tcp
sudo firewall-cmd --reload

# Set up the deploy user and their ssh
if ! grep -q deploy /etc/passwd; then
  sudo adduser deploy
fi

DEPLOY_HOME=/home/deploy

sudo mkdir -p $DEPLOY_HOME/.ssh
sudo touch $DEPLOY_HOME/.ssh/authorized_keys
sudo chmod 700 $DEPLOY_HOME/.ssh/authorized_keys

if [ -f $HOME/deploy.env ]; then
  sudo cp $HOME/deploy.env $DEPLOY_HOME/.deploy.env
  rm $HOME/deploy.env
else
  echo '******There is no environment file setup. Run the setup_env_vars.env script********'
  exit 2
fi

if ! sudo grep -s deploy.env $DEPLOY_HOME/.bashrc; then
  sudo sh -c 'echo source /home/deploy/.deploy.env >> /home/deploy/.bashrc'
fi

sudo sh -c "cat authorized_keys > $DEPLOY_HOME/.ssh/authorized_keys"
sudo cp $HOME/.ssh/id_rsa $DEPLOY_HOME/.ssh/id_rsa
sudo chown -R deploy $DEPLOY_HOME/.ssh

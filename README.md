# Echo Deploy
These scripts are for provisioning new CentOS7 servers for
both the Echo API and Echo UI.

# Echo API

Given a clean CentOS7 machine:

```bash
SERVER=my-new-server-hostname
ssh $USER@$SERVER

# On the server
sudo su - git
cd echo_deploy
git pull
./echoapi/setup_env_vars.env
./setup.sh api

# On your local machine

# Setup environment variables and put them in deploy.env
scp deploy.env deploy@$SERVER:/home/deploy/.deploy.env

# cd $ECHOAPI_ROOT
bundle exec cap development deploy
```

# Echo UI
Given a clean CentOS7 machine:

```bash
SERVER=my-new-server-hostname
ssh $USER@$SERVER

# On the server
sudo su - git
cd echo_deploy
git pull
./setup.sh ui
exit
exit

# cd $ECHOUI_ROOT
BUILD_ENV=review bundle exec cap development deploy
```

# Echo Redis - Sidekiq
Given a clean CentOS7 machine:

```bash
SERVER=my-new-server-hostname
ssh $USER@$SERVER

# On the server
sudo su - git
cd echo_deploy
git pull
./setup.sh redis
exit
exit

# cd $ECHO_ROOT
DEPLOY_SIDEKIQ=true bundle exec cap development deploy
```

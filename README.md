# Deploy
These scripts are for provisioning new CentOS7 servers for
both the API and UI.

# API

Given a clean CentOS7 machine:

```bash
SERVER=my-new-server-hostname
ssh $USER@$SERVER

# On the server
sudo su - git
cd deploy
git pull
./api/setup_env_vars.env
./setup.sh api

# On your local machine

# cd $ECHOAPI_ROOT
bundle exec cap development deploy
```

# UI
Given a clean CentOS7 machine:

```bash
SERVER=my-new-server-hostname
ssh $USER@$SERVER

# On the server
sudo su - git
cd deploy
git pull
./setup.sh ui
exit
exit

# cd $ECHOUI_ROOT
BUILD_ENV=review bundle exec cap development deploy
```

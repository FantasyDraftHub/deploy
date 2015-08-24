#setup git aliases

git config --global alias.co checkout
git config --global alias.br branch
git config --global alias.ci commit
git config --global alias.st status

if [ "$#" -lt 1 ]
  then
    echo 'Usage: ./setup.sh [ui,api]'
    exit 1
fi

which_script=$1
if [[ ${which_script} =~ ui|api ]]
  then
    echo 'Creating the deploy user'
    sh ./setup_deploy_user.sh
    echo "Setting up API $which_script"
    cd "${which_script}"
    sh ./setup.sh
else
    echo 'Invalid option, exiting now.'
fi

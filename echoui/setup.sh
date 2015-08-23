if [ "$USER" != "git" ]
 then
 echo "Run this script as the git user"
 exit 0
fi

echo 'Installing system packages'
sh ./install_pkgs.sh
echo 'Setting up echo-ui directory and pulling from repo'
sh ./setup_echo-ui.sh
echo 'setting up nginx and unicorn'
sh ./setup_nginx_unicorn.sh
echo 'Cleaning up'
sh ./cleanup.sh
echo "Remember to update git user's sudo rights/access"

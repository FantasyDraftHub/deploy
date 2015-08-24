if [ "$USER" != "git" ]
 then
 echo "Run this script as the git user"
 exit 0
fi

echo 'Installing system packages'
sh ./install_pkgs.sh
echo 'Setting up ui directory and pulling from repo'
sh ./setup_ui.sh
echo 'setting up nginx and unicorn'
sh ./setup_nginx.sh
echo 'Cleaning up'
sh ./cleanup.sh
echo "Remember to update git user's sudo rights/access"

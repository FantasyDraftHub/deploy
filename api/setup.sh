curdir=$(dirname $0)
echo 'Installing system packages'
sh $curdir/install_pkgs.sh
echo 'Setting up ruby'
sh $curdir/install_ruby.sh
echo 'Setting up API directory and pulling from repo'
sh $curdir/setup_api.sh
echo 'setting up nginx and unicorn'
sh $curdir/setup_nginx_unicorn.sh
echo 'Cleaning up'
sh $curdir/cleanup.sh
echo "Remember to update deploy user's sudo rights/access"


# Install ruby from source

function install_ruby() {
  wget https://cache.ruby-lang.org/pub/ruby/2.2/ruby-2.2.2.tar.gz
  tar -xvf ruby-2.2.2.tar.gz
  cd ruby-2.2.2
  ./configure
  make
  sudo make install
  sudo env PATH=/usr/local/bin:$PATH gem install bundler
}

if [ $(which ruby) ]; then
  if [[ `ruby -v` == *"2.2.2"* ]]; then
    echo 'good news, you are using the right ruby!'
  else
    echo 'wrong version of ruby, installing 2.2.2'
    install_ruby
  fi
else
  echo 'no ruby installed, installing ruby'
  install_ruby
fi

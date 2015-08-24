export RBENV_ROOT=/usr/local/rbenv

export PATH="$RBENV_ROOT/bin:$PATH"

if type rbenv 2>&1; then
  eval "$(rbenv init -)"
fi

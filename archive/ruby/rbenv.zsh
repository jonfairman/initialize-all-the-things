#

# Detect if rbenv has been installed to the homedir
if [ -d $HOME/.rbenv ]; then
  # Append to the path
  if [ -d $HOME/.rbenv/bin ]; then
    PATH="$HOME/.rbenv/bin:$PATH"
  fi
elif [ -d /usr/local/var/rbenv ]; then
  export RBENV_ROOT=/usr/local/var/rbenv
fi

# Load the completions from home
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

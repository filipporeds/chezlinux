#!/bin/fish

# Default editor
set -gx EDITOR nvim
set -gx VISUAL nvim

# Add to path rustup installation
fish_add_path $HOME/.cargo/bin

# Check and init pyenv
if command -v pyenv 1>/dev/null 2>&1
  status --is-interactive; and pyenv init - | source
  status --is-interactive; and pyenv virtualenv-init - | source
end

# XDG Directories
set -gx XDG_CONFIG_HOME $HOME/.config
set -gx XDG_CACHE_HOME $HOME/.cache
set -gx XDG_DATA_HOME $HOME/.local/share

# Adjust .files in home
# source: << https://wiki.archlinux.org/index.php/XDG_Base_Directory >>

# - python
set -gx CONDARC $XDG_CONFIG_HOME/python/conda/condarc
set -gx IPYTHONDIR $XDG_CONFIG_HOME/python/jupyter
set -gx JUPYTER_CONFIG_DIR $XDG_CONFIG_HOME/python/jupyter
set -gx PYTHONHISTFILE $XDG_DATA_HOME/python_repl_history
set -gx PYLINTHOME $XDG_CACHE_HOME/python

set -gx NODE_REPL_HISTORY $XDG_DATA_HOME/node_repl_history
set -gx NPM_CONFIG_USERCONFIG $XDG_CONFIG_HOME/npm/npmrc
alias yarn="yarn --use-yarnrc $XDG_CONFIG_HOME/yarn/config"


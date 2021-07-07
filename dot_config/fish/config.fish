#!/bin/fish

# Default editor
set -gx EDITOR nvim
set -gx VISUAL nvim
set -gx TERMINAL alacritty

# Screenshot tool
alias screenshot="maim -s -u -m 10 | xclip -selection clipboard -t image/png -i"

# Music tool
alias music="$HOME/.config/ncmpcpp/custom/ncmpcpp"

# pyenv
set -Ux PYENV_ROOT $HOME/.pyenv
set -U fish_user_paths $PYENV_ROOT/bin $fish_user_paths

pyenv init --path | source
pyenv init - | source

# XDG Directories
set -gx XDG_CONFIG_HOME $HOME/.config
set -gx XDG_CACHE_HOME $HOME/.cache
set -gx XDG_DATA_HOME $HOME/.local/share

# Adjust .files in home
# source: << https://wiki.archlinux.org/index.php/XDG_Base_Directory >>

# - python
set -gx PYTHONSTARTUP $XDG_CONFIG_HOME/python/pythonrc
set -gx PYTHONHISTFILE $XDG_DATA_HOME/python_repl_history
set -gx PYLINTHOME $XDG_CACHE_HOME/python
set -gx CONDARC $XDG_CONFIG_HOME/python/conda/condarc
set -gx IPYTHONDIR $XDG_CONFIG_HOME/python/jupyter
set -gx JUPYTER_CONFIG_DIR $XDG_CONFIG_HOME/python/jupyter

# - node
set -gx NODE_REPL_HISTORY $XDG_DATA_HOME/node_repl_history
set -gx NPM_CONFIG_USERCONFIG $XDG_CONFIG_HOME/npm/config
alias yarn="yarn --use-yarnrc $XDG_CONFIG_HOME/yarn/config"

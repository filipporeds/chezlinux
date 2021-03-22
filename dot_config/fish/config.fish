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

# Adjust .files in home
# source: << https://wiki.archlinux.org/index.php/XDG_Base_Directory >>
set -gx CONDARC $XDG_CONFIG_HOME/conda/condarc
set -gx IPYTHONDIR $XDG_CONFIG_HOME/jupyter
set -gx JUPYTER_CONFIG_DIR $XDG_CONFIG_HOME/jupyter

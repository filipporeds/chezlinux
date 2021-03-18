#!/bin/fish

# default editor
set -x EDITOR nvim
set -x VISUAL nvim

# rust
set PATH $HOME/.cargo/bin $PATH

#
set PATH $HOME/.cabal/bin $HOME/.ghcup/bin $PATH

# pyenv
set -Ux PYENV_ROOT $HOME/.pyenv
set -Ux fish_user_paths $PYENV_ROOT/bin $fish_user_paths

# pyenv init
if command -v pyenv 1>/dev/null 2>&1
  status --is-interactive; and pyenv init - | source
  status --is-interactive; and pyenv virtualenv-init - | source
end

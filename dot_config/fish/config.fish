#!/bin/fish

# default editor
set -x EDITOR nvim
set -x VISUAL nvim

# rust
set PATH $HOME/.cargo/bin $PATH

# pyenv init
if command -v pyenv 1>/dev/null 2>&1
  status --is-interactive; and pyenv init - | source
  status --is-interactive; and pyenv virtualenv-init - | source
end


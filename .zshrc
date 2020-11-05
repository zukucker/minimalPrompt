#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

autoload -Uz vcs_info
precmd() { vcs_info }
zstyle ':vcs_info:git:*' formats '%F{green}[%b]'
#
#
# Customize to your needs...
cd /var/www/html
#PROMPT='%F{049}%~ %F{120}λ: %f'
PROMPT='%F{red}%~ %F{red}λ: %f'
RPROMPT=\$vcs_info_msg_0_'%F{red}[%M] %T%f'


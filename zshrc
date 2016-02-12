#
# .zshrc is sourced in interactive shells.
# It should contain commands to set up aliases,
# functions, options, key bindings, etc.
#

autoload -U compinit
compinit

#allow tab completion in the middle of a word
setopt COMPLETE_IN_WORD

# keep background processes at full speed
setopt NOBGNICE
## restart running processes on exit
#setopt HUP

# history
setopt APPEND_HISTORY
# for sharing history between zsh processes
setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY

source $HOME/.zsh/zsh-history-substring-search.zsh

# bind UP and DOWN arrow keys
zmodload zsh/terminfo
bindkey "$terminfo[kcuu1]" history-substring-search-up
bindkey "$terminfo[kcud1]" history-substring-search-down

# never ever beep ever
setopt NO_BEEP

# automatically decide when to page a list of completions
LISTMAX=0

# disable mail checking
MAILCHECK=0

# load colors
autoload -U colors
colors

# set left prompt to time and cwd
setopt prompt_subst
PROMPT="%{$fg[yellow]%}%T %m:%~> %{$reset_color%}"
RPROMPT="[%{$fg_no_bold[yellow]%}%?%{$reset_color%}]"

# set right prompt to git branch name
autoload -Uz vcs_info
zstyle ':vcs_info:*' actionformats \
    '[%b|%a]%f '
zstyle ':vcs_info:*' formats       \
    '[%b]%f '
zstyle ':vcs_info:*' enable git cvs svn

vcs_info_wrapper() {
  vcs_info
  if [ -n "$vcs_info_msg_0_" ]; then
    echo "%{$fg[yellow]%}${vcs_info_msg_0_}%{$reset_color%}$del"
  fi
}
RPROMPT=$'$(vcs_info_wrapper)'

# Handy commands
alias cpv='rsync -vae ssh --progress'
alias cpa='rsync -vae ssh --progress --append'

# Load local environment
source $HOME/.zshrc.local

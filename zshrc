# Do not modify these three lines - this code loads Node Version Manager 
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# The following function sets the terminal prompt
# Modify PS1 to customize it further

function prompt {
    local CHAR="♥" ## ♥ ☆ ♬ ○ ♩ ● ♪ - Keeping some cool ASCII Characters for reference
    autoload -U colors && colors
    
    ## Here is where we actually export the PS1 Variable which stores the text for your prompt
    PS1="%{$fg[green]%}%(4~|%-1~/.../%2~|%~) %{$reset_color%}%{$fg[blue]%}// %{$reset_color%}% %{$fg[red]%}%{$CHAR%} > %{$reset_color%}% "
    PS2='> '
    PS4='+ '
}

function g {
  if [[ $# > 0 ]]; then
    git $@
  else
    git status
  fi
}



# aliases
source $HOME/dotfiles/zsh/aliases


prompt

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

alias webserver=python -m SimpleHTTPServer 8000

export ASDF_DIR=$(brew --prefix asdf)

. $(brew --prefix asdf)/asdf.sh

eval "$(jump shell --bind=j)"

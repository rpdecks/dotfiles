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



# Load Git completion
zstyle ':completion:*:*:git:*' script ~/.zsh/git-completion.bash
fpath=(~/.zsh $fpath)

autoload -Uz compinit && compinit

# aliases
source $HOME/dotfiles/zsh/aliases

prompt

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

alias webserver=python -m SimpleHTTPServer 8000

# Linus
export PATH="usr/local/opt/node@10/bin:/usr/local/opt/mysql@5.7/bin:$PATH"
export DCT_ENV=localhost
export DCT_CONFIG=localdev,rphillips

# export PATH=/Users/robertphillips/Library/Python/3.8/bin:$PATH
export PATH=/Users/robertphillips/.pyenv/versions/3.6.5/bin:$PATH
export ASDF_DIR=$(brew --prefix asdf)
export VISUAL=vim
export EDITOR="$VISUAL"

. $(brew --prefix asdf)/asdf.sh

eval "$(jump shell --bind=j)"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/robertphillips/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/robertphillips/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/robertphillips/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/robertphillips/google-cloud-sdk/completion.zsh.inc'; fi
export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"

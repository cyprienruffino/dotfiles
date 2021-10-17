# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt extendedglob nomatch notify
unsetopt autocd beep
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/cyprien/.zshrc'

autoload -Uz compinit promptinit
compinit
promptinit

# This will set the default prompt to the walters theme
prompt redhat


bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word
bindkey "^[[3~"   delete-char
bindkey "^[3;5~"  delete-char
bindkey '^[[3;5~' kill-word

export PATH=$PATH:~/.local/bin/
export PATH=$PATH:/opt/pylon6/bin/
export QT_QPA_PLATFORMTHEME=qt5ct
export EDITOR=micro

ex ()
{
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)   tar xjf $1   ;;
      *.tar.gz)    tar xzf $1   ;;
      *.bz2)       bunzip2 $1   ;;
      *.rar)       unrar x $1   ;;
      *.gz)        gunzip $1    ;;
      *.tar)       tar xf $1    ;;
      *.tbz2)      tar xjf $1   ;;
      *.tgz)       tar xzf $1   ;;
      *.zip)       unzip $1     ;;
      *.Z)         uncompress $1;;
      *.7z)        7z x $1      ;;
      *.deb)       ar x $1      ;;
      *.tar.xz)    tar xf $1    ;;
      *.tar.zst)   unzstd $1    ;;
      *)           echo "'$1' cannot be extracted via ex()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}

alias ls='ls --color=auto'
alias grep='grep --color=auto'                
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

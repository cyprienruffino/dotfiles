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
bindkey '\e[1~'   beginning-of-line  # Linux console
bindkey '\e[H'    beginning-of-line  # xterm
bindkey '\eOH'    beginning-of-line  # gnome-terminal
bindkey '\e[4~'   end-of-line        # Linux console
bindkey '\e[F'    end-of-line        # xterm
bindkey '\eOF'    end-of-line        # gnome-terminal

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

. "$HOME/.local/bin/env"


# Cloudlens



source ~/.default/bin/activate

alias llm="llm -m claude-4-sonnet -s 'You are currently run in a zsh terminal with a very small text display. Do not exceed 500 characters. If I ask you to give me a command, you HAVE to cut out unnecessary text, summaries, comments. Go straight to the point, do not give additional information, cut the fluff.'"

alias cloudlens="go run  github.com/one2nc/cloudlens@latest aws --profile rd --region=eu-west-1"

# The next line updates PATH for Nebius CLI.
if [ -f '/home/cyprien/.nebius/path.zsh.inc' ]; then source '/home/cyprien/.nebius/path.zsh.inc'; fi
# The next line enables shell command completion for Nebius CLI.
if [ -f '/home/cyprien/.nebius/completion.zsh.inc' ]; then source '/home/cyprien/.nebius/completion.zsh.inc'; fi

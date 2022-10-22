if type brew &>/dev/null
then
  FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"

  autoload -Uz compinit
  compinit
fi

# this should override the default system python (and others) as it is called first (not calling counts as last), as long as python is installed with asdf
export PATH="$HOME/.asdf:$PATH"

export PATH="$HOME/.emacs.d/bin:$PATH"
# alias emacs="emacsclient -c"

# I didn't want to set the whole path the the homebrew defualt bin location
export PATH="/opt/homebrew/opt/rsync:$PATH"

alias vi="nvim"
alias vim="nvim"


neofetch

. /opt/homebrew/opt/asdf/libexec/asdf.sh

if type brew &>/dev/null
then
  FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"

  autoload -Uz compinit
  compinit
fi

# this should override the default system python as it is called first, as long as python is installed with asdf
export PATH="$HOME/.asdf:$PATH"

export PATH="$HOME/.emacs.d/bin:$PATH"
 # alias emacs="emacsclient -c"

neofetch

. /opt/homebrew/opt/asdf/libexec/asdf.sh

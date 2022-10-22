if type brew &>/dev/null
then
  FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"

  autoload -Uz compinit
  compinit
fi

# this should override the default system python (and others) as it is called first (not calling counts as last), as long as python is installed with asdf
export PATH="$HOME/.asdf:$PATH"

export PATH="$HOME/.emacs.d/bin:$PATH"
export PATH="/opt/homebrew/opt/rsync:$PATH"
 # alias emacs="emacsclient -c"


# I didn't want to set the whole path to the homebrew path, you also need to chmod the executable
#alias rsync="/opt/homebrew/opt/rsync"


neofetch

. /opt/homebrew/opt/asdf/libexec/asdf.sh

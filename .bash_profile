
set -o vi
export PS1='$ '
alias grep='grep --color=auto'

alias ls='ls -G'

alias macvim='open -a /Applications/MacVim.app/Contents/MacOS/MacVim'

# 
source ~/.git-completion.bash


export PATH=/usr/local/miniconda3/bin:"$PATH"

# when using pyenv... but not when using Minoconda, because that breaks conda
# eval "$(pyenv init -)"


# If there is a need for the Ruby enVironment Manager, https://github.com/wayneeseguin/rvm/
# PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

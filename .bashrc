alias ls="ls --color=always"
alias less="less -RSn"

export PS1="\[\033[0;32m\]\u@\h \[\033[0;34m\]\w \`if [ \$? = 0 ]; then echo -e '\[\033[0;32m\] :-)'; else echo -e '\[\033[0;31m\] :-('; fi\` \[\033[0;34m\]\$ \[\033[0;0m\]"

#source /usr/local/src/zfsnap/completion/zfsnap-completion.bash

# Use vim.
set -o vi
export EDITOR=/usr/bin/vim

export GOPATH=$HOME/go
export GOBIN=$GOPATH/bin

# Make history better.
shopt -s cmdhist
shopt -s histappend
export PROMPT_COMMAND='history -a'
export HISTCONTROL='ignoredups'
export HISTSIZE=500000

export LIBGL_ALWAYS_INDIRECT=1
export QT_QPA_PLATFORMTHEME="qt5ct"

alias google-chrome="google-chrome --headless --disable-gpu"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/dan/google-cloud-sdk/path.bash.inc' ]; then . '/home/dan/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/dan/google-cloud-sdk/completion.bash.inc' ]; then . '/home/dan/google-cloud-sdk/completion.bash.inc'; fi

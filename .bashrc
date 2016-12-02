alias ls="ls --color=always"
alias less="less -RSn"

export PS1="\[\033[0;32m\]\u@\h \[\033[0;34m\]\w \`if [ \$? = 0 ]; then echo -e '\[\033[0;32m\] :-)'; else echo -e '\[\033[0;31m\] :-('; fi\` \[\033[0;34m\]\$ \[\033[0;0m\]"

# Use vim.
set -o vi
export EDITOR=/usr/bin/vim

# Make history better.
shopt -s cmdhist
shopt -s histappend
export PROMPT_COMMAND='history -a'
export HISTCONTROL='ignoredups'
export HISTSIZE=500000

export LIBGL_ALWAYS_INDIRECT=1

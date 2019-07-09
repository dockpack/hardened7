unset HISTCONTROL

export HISTTIMEFORMAT="%Y%m%d.%H%M "

# Merge history by appending on each prompt
shopt -s histappend

# this will change multiple line commands into single lines for easy editing
shopt -s cmdhist

# HISTIGNORE defines exact commands we don't want in .bash history
export HISTIGNORE="python:exit:env:date:pwd:!!:ls:fg:bg:w:whoami:id"

# Have a simple way to log interactive usage.
PROMPT_COMMAND='history -a >(tee -a ~/.bash_history | logger -t "$USER[$$] $SSH_CONNECTION")'

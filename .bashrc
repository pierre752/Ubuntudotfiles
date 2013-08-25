echo -n "Uptime: "; uptime
echo ""

# For my name to be available across all bash shells and subshells
MYNAME='Pierre Edouard WAHL'
export MYNAME

# must use double-quotes when calling a shell variable
# export PATH="/usr/local/bin:/usr/local/sbin:/usr/local/mysql/bin:$PATH"

# After each command, save and reload history (available across all terminal windows)
export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"
# bash history
export HISTSIZE=10000						# 500 is default
export HISTFILESIZE=1000000					# History file size
export HISTTIMEFORMAT='%b %d %I:%M %p '		# using strftime format
export HISTCONTROL=ignoreboth				# ignoreduplicates:ignorespace
export HISTIGNORE="history:pwd:exit:df:ls:ls -la:ll" # ignore values in the list

export PS1='\[\033[31m\]\u\[\033[39m\]@\[\033[39m\]: \W\[\033[34m\] $(git branch &>/dev/null; if [ $? -eq 0 ]; then echo "\[\033[01;33m\]($(git branch | grep ^*|sed s/\*\ //))\[\033[00m\]"; fi)> '


# Specify color options grep should use by default
export GREP_OPTIONS="--color=auto"
export GREP_COLOR='4;32' # green
# Turn colors on in terminal
export CLICOLOR=1

# Basic
alias ll='ls -lahG's
alias home='cd ~'
alias up='cd ..'
alias h='history'


# Safety. can also redefine a command to add options
alias rm="rm -i"
alias mv="mv -i"
alias cp="cp -i"
set -o noclobber

# Listing, directories, and motion
alias df='df -h'
alias du='du -h'
alias mkdir='mkdir -p'
alias ll="ls -alrtF --color"
alias la="ls -A"
alias l="ls -CF"
alias dir='ls --color=auto --format=vertical'
alias vdir='ls --color=auto --format=long'
alias m='less'
alias ..='cd ..'
alias ...='cd ..;cd ..'
alias md='mkdir'
alias cl='clear'
alias du='du -ch --max-depth=1'
alias treeacl='tree -A -C -L 2'

# Text and editor commands
alias vi='vim'

# can be used to fix common typos you make
alias pdw='pwd'

## Define any user-specific variables you want here.
source ~/.bashrc_custom

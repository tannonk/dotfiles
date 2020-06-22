# PS1='\[\033[00;32m\]\u@\h\[\033[0m\]:\[\033[00;33m\]\w\[\033[01;36m\]$(__git_ps1 "[%s]")\[\033[01;33m\]\$\[\033[00m\] '
# export GIT_PS1_SHOWDIRTYSTATE=true GIT_PS1_SHOWSTASHSTATE=true
# # fake __git_ps1 when git-prompts.sh not installed
# if [ "$(type -t __git_ps1)" == "" ]; then
#   function __git_ps1() { :; }
# fi

# pointer #
PS1='\[$(tput setaf 027)\]\u';	# user
PS1+='\[$(tput setaf 027)\] \w -> ';				# working dir
PS1+='\[$(tput sgr0)\]';			# rest
export PS1;


# locale settings # 
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8

# path
export PATH=$PATH:/usr/local/mysql/bin



#####################
## Alias definitions
#####################

alias ana="source ~/.conda.bashrc"
# server logins #
# alias midgard="mosh tkew@midgard.ifi.uzh.ch"
alias midgard="mosh kew@midgard.ifi.uzh.ch"
alias ildpt="ssh ildp_00@r2d2.cl.uzh.ch" # no mosh on r2d2
alias ildps="ssh ildp_01@r2d2.cl.uzh.ch" # no mosh on r2d2
alias mltat="ssh mlta_00@r2d2.cl.uzh.ch" # no mosh on r2d2
# alias mltas="mosh mlta_15@r2d2.cl.uzh.ch"
alias kaldi="ssh tannon@172.23.129.113" # no mosh on instance
# alias rattle="ssh tkew@rattle.ifi.uzh.ch" 
alias rattle="ssh kew@rattle.ifi.uzh.ch"
alias kaldigpu="ssh tannon@172.23.23.3"
alias kaldigpu2="ssh tannon@172.23.24.138"


if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases

else
	## get rid of command not found ##
	alias cd..="cd .."
	## a quick way to get out of current directory ##
	alias ..="cd .."
	alias ...="cd ../../../"
	alias ....="cd ../../../"
	alias .....="cd ../../../../"
	alias .4="cd ../../../../"
	alias .5="cd ../../../../.."
	# make directory if doesn't exist as default (verbose)
	alias mkdir="mkdir -pv"
	# use vim by default
	alias vi="vim"
	# listings
	## Colorize the ls output ##
	alias ls="ls --color=auto"
	alias ls="ls -G"
	## Use a long listing format ##
	alias ll="ls -laG"
	alias sl="ls"
	# quick clear
	alias c="clear"
	## grep
	alias grep="egrep --color=auto" # use egrep by default
	alias egrep="egrep --color=auto"
	# alias pgrep = "grep -P --color=auto"

	############
	## Functions
	############
	# change dir and list
	function cdls() { 
		cd "$@" && ls; 
	}
	# count files in a directory
	function fcount() {
		ls "$@" | wc -l
	}

	# change dir and list
	function cdd() {
	    cd $1
	    ls
	}

	function go() {
	    ana
	    source activate $1
	}

	function cl() {
	    clear
	    ls
	}

fi
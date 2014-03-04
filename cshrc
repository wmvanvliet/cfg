# $FreeBSD: src/share/skel/dot.cshrc,v 1.13 2001/01/10 17:35:28 archie Exp $
#
# .cshrc - csh resource script, read at beginning of execution by each shell
#
# see also csh(1), environ(7).
#

alias h		history 100 
alias j		jobs -l
alias la	ls -a
alias lf	ls -FA
alias ll	ls -lAh
alias ls	ls -G


# A righteous umask
umask 22

set path = (/sbin /bin /usr/sbin /usr/bin /usr/games /usr/local/texlive/2013/bin/amd64-freebsd /usr/local/sbin /usr/local/bin /usr/local/kde4/bin $HOME/bin)

setenv	CLICOLOR true
setenv	EDITOR	vim
setenv	PAGER	more
setenv	BLOCKSIZE	K
setenv	BROWSER opera
setenv	PYTHONPATH "$HOME/bciserver:$HOME/psychic:$HOME/golem:$HOME/toolboxes/python"
setenv  MOZ_PLUGIN_PATH "/usr/local/lib/browser_plugins"

alias cpv "rsync -avr --progress -e ssh"
alias cpa "rsync -avr --append --progress -e ssh"

alias ipy "ipython qtconsole --pylab & ; gvim"

if ($?prompt) then
	set prompt = '%{\033[33m%}%T %~>%{\033[0m%} '

	# An interactive shell -- set some stuff up
	switch ($TERM)
    	case "xterm*":
       		breaksw
    	default:
       		breaksw
	endsw
	set autolist = ambiguous
	set complete = enhance
	set correct = cmd
	set filec
	#set autocorrect
	set filec
	set history = 100
	set savehist = 100
	set mail = (/var/mail/$USER)
	if ( $?tcsh ) then
		bindkey "^W" backward-delete-word
		bindkey -k up history-search-backward
		bindkey -k down history-search-forward
	endif
endif

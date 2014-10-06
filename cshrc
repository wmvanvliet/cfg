# $FreeBSD: src/share/skel/dot.cshrc,v 1.13 2001/01/10 17:35:28 archie Exp $
#
# .cshrc - csh resource script, read at beginning of execution by each shell
#
# see also csh(1), environ(7).
#

alias h		history 25
alias j		jobs -l
alias la	ls -a
alias lf	ls -FA
alias ll	ls -lA
alias apg	apg -q -m 10 -x 10 -M NC -n1

# A righteous umask
umask 22

setenv	EDITOR	vim
setenv	PAGER	more
setenv	BLOCKSIZE	K
setenv	CLICOLOR 1
setenv  LSCOLORS Exfxcxdxbxegedabagacad
setenv	LC_ALL en_US.UTF-8
setenv	LANG en_US.UTF-8

setenv CANOPY "/Users/rodin/Library/Enthought/Canopy_64bit/User"
setenv PYTHONPATH "/Users/rodin/BRU/mne-python:$CANOPY/lib/python2.7/site-packages:/usr/local/lib/python2.7/site-packages:/Users/rodin/kuleuven/toolboxes/python:/Users/rodin/kuleuven/psychic:/Users/rodin/kuleuven/golem"
setenv SUBJECTS_DIR "/Applications/freesurfer/subjects"
setenv NODE_PATH "/usr/local/lib/node"
setenv MONGOHQ_URL "mongodb://test:2GIpHDDBnVhvZawSf3Nn0y40@paulo.mongohq.com:10059/app18928129"
setenv HOMEBREW_GITHUB_API_TOKEN d005fd5af0e66d04e32377b7ad008c915b5d9892

set path = (/Users/rodin/Qt/5.3/clang_64/bin $CANOPY/bin /opt/local/bin /usr/local/bin /usr/local/sbin /bin /sbin /usr/bin /usr/sbin /opt/subversion/bin /usr/local/git/bin /usr/local/texlive/2014/bin/x86_64-darwin /usr/local/cuda/bin ~/.local/bin /usr/local/mysql-5.5.15-osx10.6-x86_64/bin /Developer/usr/bin /Users/rodin/gtk/inst/bin /Applications/Julia.app/Contents/Resources/julia/bin /Users/rodin/bin)

if ($?prompt) then
	# An interactive shell -- set some stuff up
	set prompt = "\n%{\033[33m%}%T %/>%{\033[0m%} "
	set filec
	set history = 100
	set savehist = 100
	set mail = (/var/mail/$USER)
	if ( $?tcsh ) then
		bindkey "^W" backward-delete-word
		bindkey -k up history-search-backward
		bindkey -k down history-search-forward
	endif

	set autolist
	set complete = igncase
	set matchbeep = nomatch
	set noclobber
	set rmstar
	set implicitcd
endif

bindkey "\e[1~" beginning-of-line  # Home
bindkey "\e[7~" beginning-of-line  # Home rxvt
bindkey "\e[2~" overwrite-mode     # Ins
bindkey "\e[3~" delete-char        # Delete
bindkey "\e[4~" end-of-line        # End
bindkey "\e[8~" end-of-line        # End rxvt

alias cpv 'rsync -vae ssh --progress'
alias cpa 'rsync -vae ssh --progress --append'

alias cpv2 'rsync -vae "ssh -p5000" --progress'
alias cpa2 'rsync -vae "ssh -p5000" --progress'

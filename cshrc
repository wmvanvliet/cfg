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

#setenv CANOPY "/Users/rodin/Library/Enthought/Canopy_64bit/User"
setenv PYTHONPATH "/Users/rodin/BRU/mne-python:/Users/rodin/miniconda/lib/python2.7/site-packages:/usr/local/lib/python2.7/site-packages:/Users/rodin/kuleuven/toolboxes/python:/Users/rodin/kuleuven/psychic"
setenv SUBJECTS_DIR "/Applications/freesurfer/subjects"
setenv NODE_PATH "/usr/local/lib/node"
setenv MONGOHQ_URL "mongodb://test:2GIpHDDBnVhvZawSf3Nn0y40@paulo.mongohq.com:10059/app18928129"
setenv HOMEBREW_GITHUB_API_TOKEN d005fd5af0e66d04e32377b7ad008c915b5d9892

set path = (~/miniconda/bin ~/bin ~/.local/bin /usr/local/bin /usr/local/sbin /bin /sbin /usr/bin /usr/sbin /Developer/usr/bin ~/bin /usr/local/texlive/2014/bin/x86_64-darwin)

if ($?prompt) then
	# An interactive shell -- set some stuff up
	set prompt = "\n%{\033[33m%}%T %/>%{\033[0m%} "
	set filec
	set history = 2000
	set savehist = (2000 merge)
	set histfile = ~/.history
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

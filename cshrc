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
#setenv PYTHONPATH "/Users/rodin/BRU/mne-python:/Users/rodin/BRU/mne-sandbox:/Users/rodin/kuleuven/pyRiemann/:/Users/rodin/anaconda/lib/python2.7/site-packages:/usr/local/lib/python2.7/site-packages:/Users/rodin/kuleuven/toolboxes/python:/Users/rodin/kuleuven/psychic:/Users/rodin/kuleuven/bciserver"
#setenv SUBJECTS_DIR "/Applications/freesurfer/subjects"
#setenv NODE_PATH "/usr/local/lib/node"
setenv QT_API pyqt
setenv ETS_TOOLKIT qt4

set path = (~/anaconda2/bin ~/bin ~/.local/bin /usr/local/bin /usr/local/sbin /bin /sbin /usr/bin /usr/sbin /Developer/usr/bin ~/bin /usr/local/texlive/2014/bin/x86_64-darwin /usr/local/Cellar/gettext/0.19.4/bin $HOME/.local/bin)

if ($?prompt) then
	# An interactive shell -- set some stuff up
	#set prompt = "\n%{\033[33m%}%T %/>%{\033[0m%} "
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

alias cpv 'rsync -vhae ssh --progress'
alias cpa 'rsync -vhae ssh --progress --append'

alias cpv2 'rsync -vhae "ssh -p5000" --progress'
alias cpa2 'rsync -vhae "ssh -p5000" --progress'
# Initialization for FDK command line tools.Sun Jul 19 18:27:20 2015
setenv FDK_EXE "/Users/rodin/bin/FDK/Tools/osx"
setenv PATH ${PATH}:"/Users/rodin/bin/FDK/Tools/osx":"/usr/local/texlive/2016/bin/x86_64-darwin":/usr/local/bin

alias precmd "source ~/gitprompt.csh"
source ~/.git-completion.tcsh

alias matlab '/Applications/MATLAB_R2015a.app/bin/matlab -nodesktop -nodisplay -nosplash -r'

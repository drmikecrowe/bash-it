cite about-plugin
about-plugin 'load brew environment variables'

if [ -d /home/linuxbrew/.linuxbrew ]; then
	export HOMEBREW_PREFIX="/home/linuxbrew/.linuxbrew"
	export HOMEBREW_CELLAR="/home/linuxbrew/.linuxbrew/Cellar"
	export HOMEBREW_REPOSITORY="/home/linuxbrew/.linuxbrew/Homebrew"
	export PATH="/home/linuxbrew/.linuxbrew/bin:/home/linuxbrew/.linuxbrew/sbin${PATH+:$PATH}"
	export MANPATH="/home/linuxbrew/.linuxbrew/share/man${MANPATH+:$MANPATH}:"
	export INFOPATH="/home/linuxbrew/.linuxbrew/share/info${INFOPATH+:$INFOPATH}"
fi

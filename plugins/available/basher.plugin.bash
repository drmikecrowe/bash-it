cite about-plugin
about-plugin 'load dotbare, if you are using it: https://github.com/kazhala/dotbare'

DIR="$HOME/.basher"
if [[ -d "$DIR" ]]; then
	if [[ ":$PATH:" != *"$DIR/bin:"* ]]; then
		export PATH="$PATH:$DIR/bin"
		eval "$(basher init - bash)"
	fi
fi

#!/usr/bin/env bash

if [[ `which starship` ]]; then
	eval "$(starship init bash)"
else
	echo "Starship not installed.  Install via 'brew install starship'"
	SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
	source $SCRIPT_DIR/../powerline-multiline
fi

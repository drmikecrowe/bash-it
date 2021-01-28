cite about-plugin
about-plugin 'Expand "cd /u/s/app<Tab>" to "cd /usr/share/applications".'

# Load late to make sure `system` completion loads first
# BASH_IT_LOAD_PRIORITY: 375

SCRIPT="$HOME/.basher/cellar/packages/sio/bash-complete-partial-path/bash_completion"

if [ -s $SCRIPT ]; then
    source "$SCRIPT"
    _bcpp --defaults
else
	echo "Script not installed.  Install via 'basher install sio/bash-complete-partial-path'"
fi

unset SCRIPT

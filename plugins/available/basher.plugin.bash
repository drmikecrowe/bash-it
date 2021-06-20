# shellcheck shell=bash
cite about-plugin
about-plugin 'initializes basher, the shell package manager.  See: https://github.com/basherpm/basher'

if ! _command_exists basher; then
	if [[ -x "$HOME/.basher/bin/basher" ]]; then
		pathmunge "$HOME/.basher/bin"
	else
		_log_warning 'basher not found.  install from https://github.com/basherpm/basher'
		return 0
	fi
fi

eval "$(basher init - bash)"

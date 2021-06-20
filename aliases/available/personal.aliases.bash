cite 'about-alias'
about-alias 'my personal aliases'

alias .....='cd ../../../..'
alias ....='cd ../../..'
alias ...='cd ../..'
alias ..='cd ..'
alias cd..='cd ..'       # Common misspelling for going up one directory
alias -- -='cd -'        # Go back
alias acs='apt-cache search'
alias acs='aptitude search'
alias agg='sudo aptitude upgrade'
alias agi='aptitude install'
alias agi='sudo aptitude install'
alias agr='sudo aptitude remove'
alias agu='sudo aptitude update'
alias cnc='grep "^[^#;]"'
alias copy='cp'
alias cpuu="ps -e -o pcpu,cpu,nice,state,cputime,args --sort pcpu | sed '/^ 0.0 /d'"
alias dir='ls'
alias dud='du -h --max-depth=1 --one-file-system'
alias dudg='du -h --max-depth=1 --one-file-system 2>&1 | egrep "^[0-9.]*G"'
alias gh='history | grep --colour=auto'
alias grep="grep --color --exclude-dir='.svn' --exclude-dir='.git'"
alias hc="history | cut -b 8-"
alias l.='ls -d .[a-zA-Z]* --color=tty'
alias l='ls -l --color=tty'
alias ll='ls -la --color=tty'

# Detect which `ls` flavor is in use
if ls --color > /dev/null 2>&1; then # GNU `ls`
	colorflag="--color"
	export LS_COLORS='no=00:fi=00:di=01;31:ln=01;36:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arj=01;31:*.taz=01;31:*.lzh=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.gz=01;31:*.bz2=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.jpg=01;35:*.jpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.avi=01;35:*.fli=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.ogg=01;35:*.mp3=01;35:*.wav=01;35:'
else # macOS `ls`
	colorflag="-G"
	export LSCOLORS='BxBxhxDxfxhxhxhxhxcxcx'

  # Always use color output for `ls`
  alias ls="command ls ${colorflag}"
fi

# List all files colorized in long format
alias l="ls -lF ${colorflag}"

# List all files colorized in long format, excluding . and ..
alias la="ls -lAF ${colorflag}"

# List only directories
alias lsd="ls -lF ${colorflag} | grep --color=never '^d'"

alias md='mkdir'
alias memu='ps -e -o rss=,args= | sort -b -k1,1n | pr -TW$COLUMNS'
alias psa='ps faux'
alias psag='ps faux | grep'
alias psg='ps -A | grep'
alias psi='ps h -eo pmem,comm | sort -nr | head'
alias tail='tail -n 30'

alias ta='tmux attach -t'
alias tnew='tmux new -s'
alias tls='tmux ls'
alias tkill='tmux kill-session -t'

alias _="sudo"

# Shortcuts to edit startup files
alias vbrc="vim ~/.bashrc"
alias vbpf="vim ~/.bash_profile"

if which gshuf &> /dev/null
then
  alias shuf=gshuf
fi

# Shell History
alias h='history'

# Directory
alias md='mkdir -p'
alias rd='rmdir'

alias npm-r="npm run"
alias npm-i="npm install"
alias npm-i-force="rm -rf node_modules && rm package-lock.json && npm-i"
alias npm-dep="npm install --save"
alias npm-dev="npm install --save-dev"
alias npm-global="npm install --global"
alias npm-u="npm uninstall"

alias pnpm-r="pnpm run"
alias pnpm-i="pnpm install --child-concurrency=8"
alias pnpm-i-force="rm -rf node_modules && pnpm-lock.yaml && pnpm install --child-concurrency=8"
alias pnpm-dep="pnpm install --save --child-concurrency=8"
alias pnpm-dev="pnpm install --save-dev --child-concurrency=8"
alias pnpm-global="pnpm install --global --child-concurrency=8"
alias pnpm-u="pnpm uninstall"

alias repo="npm repo"

if [ -f ~/.npmrc ]; then
    alias typesync="mv ~/.npmrc /tmp/ && /Users/mcrowe/.nodenv/shims/typesync; mv /tmp/.npmrc ~"
fi

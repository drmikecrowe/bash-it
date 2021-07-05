cite about-plugin
about-plugin 'My personal functions'


# rag: expand history but do not execute
shopt -s histverify

# If set, minor errors in the spelling of a directory component in a cd command will be corrected
shopt -s cdspell

# If set, Bash matches filenames in a case-insensitive fashion when performing filename expansion.
shopt -s nocaseglob

# If set, Bash attempts to save all lines of a multiple-line command in the same history entry
shopt -s cmdhist

detailed_hist() {
	return 0
}

mcd() {
    [ -n "$1" ] && mkdir -p "$@" && cd "$1";
}

rustscan() {
    /snap/bin/rustscan -g $@
}

makeIndex() {
    if [ ! -z $1 ]; then
        pushd $1
    fi
    find . -maxdepth 1 -type f -name '*.ts' | egrep -v "index|spec" | sort | sed "s/\.ts$/'/" | sed "s/^/export * from '/" > index.ts
    find . -maxdepth 1 -type d | sort | while read DIR; do
        if [ "$DIR" == "." ]; then continue; fi
        if [ -f $DIR/index.ts ]; then
            echo "export * from '$DIR'" >> index.ts
        fi
    done
    if [ ! -z $1 ]; then
        popd
    fi
}

rsyncNode() {
    mkdir -p "$2"
    rsync -avrmR --exclude='node_modules/' --exclude='.tmp/' --exclude='.git/' --exclude='.webpack/' --exclude='.serverless/' $@
}

sourceFiles() {
    if [ -d $1 ]; then
        find $1 -maxdepth 1 -type f -print | egrep '\.sh$|\.bash$' | while read FILE; do
            source $FILE
        done
    fi
}

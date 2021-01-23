cite about-plugin
about-plugin 'load dotbare, if you are using it: https://github.com/kazhala/dotbare'

DIR="$HOME/.dotbare"
if [[ -d "$DIR" ]]; then 
  [[ ":$PATH:" != *":/$DIR:"* ]] && source $DIR/dotbare.plugin.bash
fi

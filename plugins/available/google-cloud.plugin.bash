cite about-plugin
about-plugin 'Add google cloud support'

# The next line updates PATH for the Google Cloud SDK.
if [ -f '$HOME/bin/google-cloud-sdk/path.bash.inc' ]; then . '$HOME/bin/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '$HOME/bin/google-cloud-sdk/completion.bash.inc' ]; then . '$HOME/bin/google-cloud-sdk/completion.bash.inc'; fi

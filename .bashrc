HISTCONTROL=ignoreboth
shopt -s histappend
HISTSIZE=500
HISTFILESIZE=500
shopt -s checkwinsize

if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

PS1='\[\e[1;35m\]\[\e[45m\]\[\e[1;30m\]\A\[\e[0m\]\[\e[1;35m\] \[\e[1;32m\]\[\e[42m\]\[\e[1;30m\] \w \[\e[0m\]\[\e[1;32m\]\[\e[0m\]\n\[\e[1;34m\]\[\e[44m\]\[\e[1;30m\]\[\e[0m\]\[\e[1;34m\]\[\e[1;36m\] '

bind 'set completion-ignore-case On'
bind 'set show-all-if-ambiguous on'
bind 'TAB:menu-complete'

if [[ $TERM = xterm-kitty ]]; then
	rxfetch
fi

unset PROMPT_COMMAND

# some more aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias vim='nvim'
alias py='python'
alias ipy='ipython'

alias bookmarks="nvim $HOME/.config/homepage/bookmarks.js"

alias activate='source $HOME/.venv/activator'
alias tensorflow_kernel='jupyter-console --kernel=tensorflow'

export PATH=$PATH:$HOME/.local/bin:$HOME/.config/scripts/

export ANDROID_SDK_ROOT='/opt/android-sdk'
export PATH=$PATH:$ANDROID_SDK_ROOT/platform-tools/
export PATH=$PATH:$ANDROID_SDK_ROOT/tools/bin/
export PATH=$PATH:$ANDROID_SDK_ROOT/tools/

export JAVA_OPTS='-XX:+IgnoreUnrecognizedVMOptions'

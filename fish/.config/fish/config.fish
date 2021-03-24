### ENVVARS
set -gx PATH "$HOME/.emacs.d/bin" $PATH
set -gx XDG_CONFIG_HOME "$HOME/.config"
set -gx XDG_DATA_HOME "$HOME/.local/share"
set -gx XDG_CACHE_HOME "$HOME/.cache"

# Neovim plugins
set -gx PATH "$XDG_CONFIG_HOME/nvim/plugged" $PATH

# Remove default greeting
set fish_greeting

# Manpages
set -gx MANPATH "$MANPATH:/usr/local/man" 
set -gx MANPAGER "sh -c 'col -bx | bat -l man -p'"

# Adds `~/.local/bin` to $PATH
set -gx PATH "$HOME/.local/bin" $PATH

# Android tools
set -gx PATH "$HOME/.local/bin/platform-tools" $PATH

# Cargo and rust tools
set -gx CARGO_HOME "$XDG_DATA_HOME/cargo"
set -gx PATH "$CARGO_HOME/bin" $PATH

# Node.js npm
set -gx NPM_CONFIG_PREFIX "$XDG_DATA_HOME/npm-global"
set -gx PATH "$NPM_CONFIG_PREFIX/bin" $PATH

# Default programs:
set -gx EDITOR "nvim"
set -gx VISUAL "nvim"
set -gx READER "less"

# ~/ Clean-up:
set -gx NOTMUCH_CONFIG "$XDG_CONFIG_HOME/notmuch-config"
set -gx GTK2_RC_FILES "$XDG_CONFIG_HOME/gtk-2.0/gtkrc-2.0"
set -gx SPACEVIMDIR "$XDG_CONFIG_HOME/SpaceVim/"
set -gx XINITRC "$XDG_CONFIG_HOME/.config}/x11/xinitrc"
set -gx LESSHISTFILE "-"
set -gx WGETRC "$XDG_CONFIG_HOME/wget/wgetrc"
set -gx INPUTRC "$XDG_CONFIG_HOME/inputrc"
# set -gx GNUPGHOME "$XDG_DATA_HOME/gnupg"
set -gx WINEPREFIX "$HOME/.local/share/wineprefixes/default"
set -gx PASSWORD_STORE_DIR "$HOME/.local/share/password-store"
set -gx TMUX_TMPDIR "$XDG_RUNTIME_DIR"
set -gx ANDROID_SDK_HOME "$XDG_CONFIG_HOME/android"
set -gx GOPATH "$HOME/.local/share/go"
set -gx ANSIBLE_CONFIG "$XDG_CONFIG_HOME/ansible/ansible.cfg"
set -gx UNISON "$HOME/.local/share/unison"
set -gx HISTFILE "$HOME/.local/share/history"
set -gx TESSDATA_PREFIX "$HOME/homebrew/share/tessdata/"

### ALIASES

# Verbosity and settings that you pretty much just always are going to want.
alias cp='cp -iv'
alias mv='mv -iv'
alias rm='rm -iv'
alias mkd='mkdir -pv'
# alias cat='bat'
alias yt='youtube-dl --add-metadata -i'
alias yta='yt -x -f bestaudio/best'
alias ffmpeg='ffmpeg -hide_banner'
alias pip='pip3'
alias python='python3'

# Colorize commands when possible.
alias grep='grep --color=auto'
alias diff='diff --color=auto'
alias ccat='highlight --out-format=ansi'

# These common commands are just too long! Abbreviate them.
alias ka='killall'
alias g='git'
alias trem='transmission-remote'
alias YT='youtube-viewer'
alias sdn='sudo shutdown -h now'
alias f='$FILE'
alias e='$EDITOR'
alias v='$EDITOR'

# Changing "ls" to "exa"
alias ls='exa --color=always --group-directories-first' # my preferred listing
alias la='exa -a --color=always --group-directories-first'  # all files and dirs
alias ll='exa -al --color=always --group-directories-first'  # long format
alias lt='exa -aT --color=always --group-directories-first' # tree listing
alias l.='exa -a | egrep "^\."'

# alias ..='cd ..'
# alias .='cd .'
alias xclip="xclip -selection c"

# These are shortcuts for editing config files.
alias vimrc='$EDITOR $HOME/.config/nvim/init.vim'
alias fishrc='$EDITOR $HOME/.config/fish/config.fish'

alias tmux='tmux -f $HOME/.config/tmux/tmux.conf'

# Change fish shell colors
cat ~/.cache/wal/sequences &

# Starship prompt
starship init fish | source

# Vi bindings
fish_vi_key_bindings
set vi_mode_default vi_mode_normal

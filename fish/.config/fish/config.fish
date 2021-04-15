### ENVVARS

# Remove default greeting
set fish_greeting

set -gx XDG_CONFIG_HOME "$HOME/.config"
set -gx XDG_DATA_HOME "$HOME/.local/share"
set -gx XDG_CACHE_HOME "$HOME/.cache"

set -g fish_user_paths "$HOME/homebrew/bin" $fish_user_paths
set -g fish_user_paths "$HOME/homebrew/sbin" $fish_user_paths

set -gx PATH "/opt/local/bin:/opt/local/sbin" $PATH
set -gx MANPATH "/usr/local/man" $MANPATH
set -gx PATH "$HOME/.emacs.d/bin" $PATH
set -gx PATH "$HOME/homebrew/opt/openjdk@11/bin" $PATH
set -gx PATH "$HOME/homebrew/opt/llvm/bin" $PATH
set -gx PATH "$XDG_CONFIG_HOME/nvim/plugged/" $PATH

set -g -x MANPAGER "sh -c 'col -bx | bat -l man -p'"

# Latex Variables
set -gx PATH "/usr/local/texlive/2020/bin/x86_64-darwin/" $PATH
set -gx MANPATH "/usr/local/texlive/2020/texmf-dist/doc/man" $MANPATH
set -gx INFOPATH "/usr/local/texlive/2020/texmf-dist/doc/info" $INFOPATH

# Adds `~/.local/bin` to $PATH
set -gx PATH "$HOME/.local/bin" $PATH

# Homebrew options.
set -gx HOMEBREW_NO_ANALYTICS 1 $HOMEBREW_NO_ANALYTICS
set -gx HOMEBREW_NO_INSECURE_REDIRECT 1 $HOMEBREW_NO_INSECURE_REDIRECT
# set -gx HOMEBREW_CASK_OPTS --require-sha $HOMEBREW_CASK_OPTS
set -gx HOMEBREW_CASK_OPTS "--appdir=~/Applications" $HOMEBREW_CASK_OPTS

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
set -gx PATH "$HOME/.rvm/bin" $PATH

# Neovim plugins
set -gx PATH "$XDG_CONFIG_HOME/nvim/plugged" $PATH
set -gx PATH "$XDG_CONFIG_HOME/nvim/plugged/vim-iced/bin" $PATH

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
# alias vimrc='$EDITOR $HOME/.config/nvim/init.vim'
alias vimrc='cd $XDG_CONFIG_HOME/nvim/'
alias fishrc='$EDITOR $XDG_CONFIG_HOME/fish/config.fish'
alias tmuxrc='$EDITOR $XDG_CONFIG_HOME/tmux/tmux.conf'
alias termrc='$EDITOR $XDG_CONFIG_HOME/alacritty/alacritty.yml'
alias dotfiles='lazygit -w $HOME/.dotfiles/'

alias tmux='tmux -f $HOME/.config/tmux/tmux.conf'

# Starship prompt
starship init fish | source

# Vi bindings
fish_vi_key_bindings
set vi_mode_default vi_mode_normal

if test -d (brew --prefix)"/share/fish/completions"
    set -gx fish_complete_path $fish_complete_path (brew --prefix)/share/fish/completions
end

if test -d (brew --prefix)"/share/fish/vendor_completions.d"
    set -gx fish_complete_path $fish_complete_path (brew --prefix)/share/fish/vendor_completions.d
end

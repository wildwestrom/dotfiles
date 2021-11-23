### ENVVARS

# Remove default greeting
set fish_greeting

# First line removes the path; second line sets it.  Without the first line, # your path gets massive and fish becomes very slow.
set -e fish_user_paths

# Default programs:
set EDITOR "nvim"
set VISUAL "nvim"
set READER "less"

# Man pages
set -x MANPAGER "sh -c 'col -bx | bat -l man -p'"
set -x MANPATH "/usr/share/man" $MANPATH

## Path Variables
set -x XDG_CONFIG_HOME "$HOME/.config"
set -x XDG_DATA_HOME "$HOME/.local/share"
set -x XDG_CACHE_HOME "$HOME/.cache"
set -x PATH "$HOME/.local/bin" $PATH

# Homebrew
set -x PATH "$HOME/homebrew/bin"  $PATH
set -x PATH "$HOME/homebrew/sbin" $PATH

# C Include Path
set -x C_INCLUDE_PATH "/usr/local/include"
set -x C_INCLUDE_PATH "$HOME/homebrew/include" $C_INCLUDE_PATH

# GNU Coreutils
set -x PATH "/Users/main/homebrew/opt/coreutils/libexec/gnubin" $PATH

# JVM
set -x JAVA_HOME "Library/Java/JavaVirtualMachines/graalvm-ce-java17-21.3.0/Contents/Home"
set -x PATH "$JAVA_HOME/bin" $PATH

# Android tools
set -x ANDROID_HOME "$HOME/Library/Android/sdk/"
set -x PATH "$ANDROID_HOME/emulator" $PATH
set -x PATH "$ANDROID_HOME/tools" $PATH
set -x PATH "$ANDROID_HOME/tools/bin" $PATH
set -x PATH "$ANDROID_HOME/platform-tools" $PATH

# LLVM
set -x PATH "$HOME/homebrew/opt/llvm/bin" $PATH

# Nvim Plugins
set -x PATH "$XDG_CONFIG_HOME/nvim/plugged/" $PATH

# Latex Variables
set -x PATH "/usr/local/texlive/2021/bin/universal-darwin/" $PATH
set -x PATH "/Library/TeX/texbin" $PATH
set -x MANPATH "/usr/local/texlive/2021/texmf-dist/doc/man" $MANPATH
set -x INFOPATH "/usr/local/texlive/2021/texmf-dist/doc/info" $INFOPATH

# Homebrew options.
set -x HOMEBREW_NO_ANALYTICS 1 $HOMEBREW_NO_ANALYTICS
set -x HOMEBREW_NO_INSECURE_REDIRECT 1 $HOMEBREW_NO_INSECURE_REDIRECT
set -x HOMEBREW_CASK_OPTS "--appdir=~/Applications" $HOMEBREW_CASK_OPTS
set -x HOMEBREW_CASK_OPTS "--build-from-source" $HOMEBREW_CASK_OPTS

# Neovim plugins
set -x PATH "$XDG_CONFIG_HOME/nvim/plugged" $PATH
set -x PATH "$XDG_CONFIG_HOME/nvim/plugged/vim-iced/bin" $PATH

# Cargo and rust tools
set -x CARGO_HOME "$XDG_DATA_HOME/cargo"
set -x PATH "$CARGO_HOME/bin" $PATH

# Doom Emacs
set -x PATH "$HOME/emacs/doom-emacs/bin" $PATH

# Node.js npm
set -x NPM_CONFIG_PREFIX "$XDG_DATA_HOME/npm-global"
set -x PATH "$NPM_CONFIG_PREFIX/bin" $PATH

# Python
alias python='$HOME/homebrew/bin/python3'

# ~/ Clean-up:
set -x NOTMUCH_CONFIG "$XDG_CONFIG_HOME/notmuch-config"
set -x GTK2_RC_FILES "$XDG_CONFIG_HOME/gtk-2.0/gtkrc-2.0"
set -x SPACEVIMDIR "$XDG_CONFIG_HOME/SpaceVim/"
# set -x XINITRC "$XDG_CONFIG_HOME/x11/xinitrc"
set -x LESSHISTFILE "-"
set -x NREPL_CONFIG_DIR "$XDG_CONFIG_HOME/clojure/nrepl/"
set -x WGETRC "$XDG_CONFIG_HOME/wget/wgetrc"
set -x INPUTRC "$XDG_CONFIG_HOME/inputrc"
# set -x GNUPGHOME "$XDG_DATA_HOME/gnupg"
set -x WINEPREFIX "$HOME/.local/share/wineprefixes/default"
set -x PASSWORD_STORE_DIR "$HOME/.local/share/password-store"
set -x TMUX_TMPDIR "$XDG_RUNTIME_DIR"
set -x GOPATH "$HOME/.local/share/go"
set -x UNISON "$HOME/.local/share/unison"
set -x HISTFILE "$HOME/.local/share/history"
set -x TESSDATA_PREFIX "$HOME/homebrew/share/tessdata/"

### ALIASES

# Verbosity and settings that you pretty much just always are going to want.
alias cp='cp -iv'
alias mv='mv -iv'
alias rm='rm -iv'
alias mkd='mkdir -pv'
alias cat='bat'
alias yt='youtube-dl --add-metadata -i'
alias yta='yt -x -f bestaudio/best'
alias ffmpeg='ffmpeg -hide_banner'

# Colorize commands when possible.
alias grep='grep --color=auto'
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
alias dotfiles='lazygit -w $HOME/.dotfiles/'

# Alacritty
alias termrc='$EDITOR $XDG_CONFIG_HOME/alacritty/alacritty.yml'

set ALACRITTY_DARKTHEME 'one-dark.yml'
set ALACRITTY_LIGHTTHEME 'one-light.yml'
alias termcolor-light='alacritty-colorscheme apply $ALACRITTY_LIGHTTHEME'
alias termcolor-dark='alacritty-colorscheme apply $ALACRITTY_DARKTHEME'
alias termcolor-toggle='alacritty-colorscheme toggle $ALACRITTY_LIGHTTHEME $ALACRITTY_DARKTHEME'

alias tmux='tmux -f $HOME/.config/tmux/tmux.conf'

# Vi bindings
function fish_user_key_bindings
  fish_vi_key_bindings
end

# set vi_mode_default vi_mode_normal

# if test -d (brew --prefix)"/share/fish/completions"
#     set -x fish_complete_path $fish_complete_path (brew --prefix)/share/fish/completions
# end
#
# if test -d (brew --prefix)"/share/fish/vendor_completions.d"
#     set -x fish_complete_path $fish_complete_path (brew --prefix)/share/fish/vendor_completions.d
# end

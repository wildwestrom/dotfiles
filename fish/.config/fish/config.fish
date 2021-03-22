### ENVVARS
set -gx PATH "$HOME/.emacs.d/bin" $PATH
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

# Cargo
set -gx PATH "$XDG_DATA_HOME/cargo/bin" $PATH

# Default programs:
set -gx EDITOR "nvim"
set -gx VISUAL "nvim"
set -gx READER "less"

# ~/ Clean-up:
set -gx XDG_CONFIG_HOME "$HOME/.config"
set -gx XDG_DATA_HOME "$HOME/.local/share"
set -gx XDG_CACHE_HOME "$HOME/.cache"

set -gx NOTMUCH_CONFIG "$XDG_CONFIG_HOME/notmuch-config"
set -gx GTK2_RC_FILES "$XDG_CONFIG_HOME/gtk-2.0/gtkrc-2.0"
set -gx SPACEVIMDIR "$XDG_CONFIG_HOME/SpaceVim/"
set -gx LESSHISTFILE "-"
set -gx WGETRC "$XDG_CONFIG_HOME/wget/wgetrc"
set -gx INPUTRC "$XDG_CONFIG_HOME/inputrc"
# set -gx GNUPGHOME "$XDG_DATA_HOME/gnupg"
set -gx WINEPREFIX "$HOME/.local/share/wineprefixes/default"
set -gx PASSWORD_STORE_DIR "$HOME/.local/share/password-store"
set -gx TMUX_TMPDIR "$XDG_RUNTIME_DIR"
set -gx ANDROID_SDK_HOME "$XDG_CONFIG_HOME/android"
set -gx CARGO_HOME "$XDG_DATA_HOME/cargo"
set -gx GOPATH "$HOME/.local/share/go"
set -gx ANSIBLE_CONFIG "$XDG_CONFIG_HOME/ansible/ansible.cfg"
set -gx UNISON "$HOME/.local/share/unison"
set -gx HISTFILE "$HOME/.local/share/history"
set -gx TESSDATA_PREFIX "$HOME/homebrew/share/tessdata/"

# This is the list for lf icons:
# set -gx LF_ICONS "\
# tw=:\
# st=:\
# ow=:\
# dt=:\
# di=:\
# fi=:\
# ln=:\
# or=:\
# ex=:\
# *.c=:\
# *.cc=:\
# *.clj=:\
# *.coffee=:\
# *.cpp=:\
# *.css=:\
# *.d=:\
# *.dart=:\
# *.erl=:\
# *.exs=:\
# *.fs=:\
# *.go=:\
# *.h=:\
# *.hh=:\
# *.hpp=:\
# *.hs=:\
# *.html=:\
# *.java=:\
# *.jl=:\
# *.js=:\
# *.json=:\
# *.lua=:\
# *.md=:\
# *.php=:\
# *.pl=:\
# *.pro=:\
# *.py=:\
# *.rb=:\
# *.rs=:\
# *.scala=:\
# *.ts=:\
# *.vim=:\
# *.cmd=:\
# *.ps1=:\
# *.sh=:\
# *.bash=:\
# *.zsh=:\
# *.fish=:\
# *.tar=:\
# *.tgz=:\
# *.arc=:\
# *.arj=:\
# *.taz=:\
# *.lha=:\
# *.lz4=:\
# *.lzh=:\
# *.lzma=:\
# *.tlz=:\
# *.txz=:\
# *.tzo=:\
# *.t7z=:\
# *.zip=:\
# *.z=:\
# *.dz=:\
# *.gz=:\
# *.lrz=:\
# *.lz=:\
# *.lzo=:\
# *.xz=:\
# *.zst=:\
# *.tzst=:\
# *.bz2=:\
# *.bz=:\
# *.tbz=:\
# *.tbz2=:\
# *.tz=:\
# *.deb=:\
# *.rpm=:\
# *.jar=:\
# *.war=:\
# *.ear=:\
# *.sar=:\
# *.rar=:\
# *.alz=:\
# *.ace=:\
# *.zoo=:\
# *.cpio=:\
# *.7z=:\
# *.rz=:\
# *.cab=:\
# *.wim=:\
# *.swm=:\
# *.dwm=:\
# *.esd=:\
# *.jpg=:\
# *.jpeg=:\
# *.mjpg=:\
# *.mjpeg=:\
# *.gif=:\
# *.bmp=:\
# *.pbm=:\
# *.pgm=:\
# *.ppm=:\
# *.tga=:\
# *.xbm=:\
# *.xpm=:\
# *.tif=:\
# *.tiff=:\
# *.png=:\
# *.svg=:\
# *.svgz=:\
# *.mng=:\
# *.pcx=:\
# *.mov=:\
# *.mpg=:\
# *.mpeg=:\
# *.m2v=:\
# *.mkv=:\
# *.webm=:\
# *.ogm=:\
# *.mp4=:\
# *.m4v=:\
# *.mp4v=:\
# *.vob=:\
# *.qt=:\
# *.nuv=:\
# *.wmv=:\
# *.asf=:\
# *.rm=:\
# *.rmvb=:\
# *.flc=:\
# *.avi=:\
# *.fli=:\
# *.flv=:\
# *.gl=:\
# *.dl=:\
# *.xcf=:\
# *.xwd=:\
# *.yuv=:\
# *.cgm=:\
# *.emf=:\
# *.ogv=:\
# *.ogx=:\
# *.aac=:\
# *.au=:\
# *.flac=:\
# *.m4a=:\
# *.mid=:\
# *.midi=:\
# *.mka=:\
# *.mp3=:\
# *.mpc=:\
# *.ogg=:\
# *.ra=:\
# *.wav=:\
# *.oga=:\
# *.opus=:\
# *.spx=:\
# *.xspf=:\
# *.pdf=:\
# *.nix=:\
# "

### ALIASES

# Verbosity and settings that you pretty much just always are going to want.
alias cp='cp -iv'
alias mv='mv -iv'
alias rm='rm -v'
alias mkd='mkdir -pv'
alias cat='bat'
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
alias ls='exa'
alias la='exa -a'
alias ll='exa -lah'
# alias ..='cd ..'
# alias .='cd .'
alias xclip="xclip -selection c"

# These are shortcuts for editing config files.
alias vimrc='$EDITOR $HOME/.config/nvim/init.vim'
alias spcvimrc='$EDITOR $HOME/.config/SpaceVim/init.toml'
alias aliasrc='$EDITOR $HOME/.config/aliasrc'
alias fishrc='$EDITOR $HOME/.config/fish/config.fish'
alias lfrc='$EDITOR $HOME/.config/lf/lfrc'
alias zprof='$EDITOR $HOME/.zprofile'

alias tmux='tmux -f $HOME/.config/tmux/tmux.conf'

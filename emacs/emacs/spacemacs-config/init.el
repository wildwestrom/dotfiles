;; -*- mode: emacs-lisp; lexical-binding: t -*-
;; This file is loaded by Spacemacs at startup.
;; It must be stored in your home directory.

(defun dotspacemacs/layers ()
  "Layer configuration:
This function should only modify configuration layer settings."
  (setq-default
   ;; Base distribution to use. This is a layer contained in the directory
   ;; `+distribution'. For now available distributions are `spacemacs-base'
   ;; or `spacemacs'. (default 'spacemacs)
   dotspacemacs-distribution 'spacemacs

   ;; Lazy installation of layers (i.e. layers are installed only when a file
   ;; with a supported type is opened). Possible values are `all', `unused'
   ;; and `nil'. `unused' will lazy install only unused layers (i.e. layers
   ;; not listed in variable `dotspacemacs-configuration-layers'), `all' will
   ;; lazy install any layer that support lazy installation even the layers
   ;; listed in `dotspacemacs-configuration-layers'. `nil' disable the lazy
   ;; installation feature and you have to explicitly list a layer in the
   ;; variable `dotspacemacs-configuration-layers' to install it.
   ;; (default 'unused)
   dotspacemacs-enable-lazy-installation 'unused

   ;; If non-nil then Spacemacs will ask for confirmation before installing
   ;; a layer lazily. (default t)
   dotspacemacs-ask-for-lazy-installation nil

   ;; List of additional paths where to look for configuration layers.
   ;; Paths must have a trailing slash (i.e. `~/.mycontribs/')
   dotspacemacs-configuration-layer-path '()

   ;; List of configuration layers to load.
   dotspacemacs-configuration-layers
   '(
     ;; ----------------------------------------------------------------
     ;; Example of useful layers you may want to use right away.
     ;; Uncomment some layer names and press `SPC f e R' (Vim style) or
     ;; `M-m f e R' (Emacs style) to install them.
     ;; ----------------------------------------------------------------
     ;;

     ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
     ;;
     ;; General Nicities
     ;;
     ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

     ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
     ;; Interface
     ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

     ;; Nyan cat indicating relative position in current buffer
     ;; :variables colors-enable-nyan-cat-progress-bar (display-graphic-p)
     colors

     ;; Include emojis into everything
     emoji

     ;; Configuration: https://github.com/seagle0128/doom-modeline#customize
     (spacemacs-modeline :variables
                         doom-modeline-height 12
                         doom-modeline-major-mode-color-icon t
                         doom-modeline-buffer-file-name-style 'relative-to-project
                         doom-modeline-display-default-persp-name t
                         doom-modeline-minor-modes nil
                         doom-modeline-modal-icon nil)

     ;; Customise the Spacemacs themes
     ;; https://develop.spacemacs.org/layers/+themes/theming/README.html
     ;; Code in dotspacemacs/user-init to reduce size of modeline
     theming

     ;; Support font ligatures (fancy symbols) in all modes
     ;; 'prog-mode for only programming languages
     ;; including text-mode may cause issues with org-mode and magit
     (unicode-fonts :variables
                    unicode-fonts-existence-checks 'first
                    unicode-fonts-force-multi-color-on-mac t
                    unicode-fonts-enable-ligatures t
                    unicode-fonts-ligature-modes '(prog-mode))

     ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
     ;; Tools
     ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

     ;; Spell as you type with Flyspell package,
     ;; requires external command - ispell, hunspell, aspell
     ;; SPC S menu, SPC S s to check current word
     (spell-checking :variables spell-checking-enable-by-default nil)

     ;; Editing multiple lines of text concurrently
     ;; `g r' menu in Emacs normal state
     multiple-cursors

     ;; (ivy :variables
     ;;      ;; removes annoying caret (^) on M-x
     ;;      ivy-initial-inputs-alist nil)

     (helm :variables
           helm-follow-mode-persistent t)

     (osx :variables
          osx-command-as 'super)

     ;; Text-based file manager with preview - SPC a t r r
     (ranger :variables
             ranger-show-preview t
             ranger-show-hidden t
             ranger-cleanup-eagerly t
             ranger-cleanup-on-disable t
             ranger-ignored-extensions '("mkv" "flv" "iso" "mp4"))

     ;; Visual file manager - `SPC p t'
     ;; treemacs-no-png-images t removes file and directory icons
     (treemacs :variables
               treemacs-lock-width t
               treemacs-width 22
               treemacs-indentation 1
               treemacs-use-all-the-icons-theme t
               treemacs-space-between-root-nodes nil
               treemacs-use-filewatch-mode t
               treemacs-use-follow-mode t
               )

     ;; spacemacs-layouts layer added to set variables
     ;; SPC TAB restricted to current layout buffers
     ;; Kill buffers when killing layer - SPC l x
     (spacemacs-layouts :variables
                        spacemacs-layouts-restrict-spc-tab t
                        persp-autokill-buffer-on-remove 'kill-weak)

     ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
     ;; Logging
     ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

     ;; ;; SPC a L displays key and command history in a separate buffer
     command-log


     ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
     ;;
     ;; Programming Languages
     ;;
     ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

     ;; apl+variants

     ;; (c-c++ :variables c-c++-enable-clang-support t)
     ;; cmake

     ;; https://develop.spacemacs.org/layers/+lang/clojure/README.html
     (clojure :variables
              ;; clojure-backend 'cider               ;; use cider instead of lsp
              ;; clojure-enable-linters 'clj-kondo    ;; clj-kondo included in lsp
              clojure-enable-clj-refactor t
              cider-repl-display-help-banner nil      ;; disable help banner
              cider-pprint-fn 'fipp                   ;; fast pretty printing
              clojure-indent-style 'align-arguments
              clojure-align-forms-automatically t
              clojure-toplevel-inside-comment-form t  ;; evaluate expressions in comment as top level
              cider-result-overlay-position 'at-point ;; results shown right after expression
              cider-overlays-use-font-lock t
              cider-repl-buffer-size-limit 100        ;; limit lines shown in REPL buffer
              cider-eldoc-display-for-symbol-at-point nil
              )

     emacs-lisp

     ;; (go :variables
     ;;     go-backend 'lsp)

     haskell

     java

     ;; python

     ;; racket

     rust

     shell-scripts

     ;; swift

     ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
     ;; Web Programming
     ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

     html
     (php :variables php-backend 'lsp)
     gtags ;; seems to fix the problem of not detecting closing tags

     (javascript :variables
                 javascript-backend 'lsp)
     typescript
     svelte

     elm
     purescript

     prettier

     ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
     ;; Document/Data Formats
     ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

     asciidoc

     csv

     epub

     json

     (latex :variables
            latex-backend 'lsp
            latex-refresh-preview t)

     (markdown :variables
               markdown-live-preview-engine 'vmd)

     ;; Spacemacs Org mode
     (org :variables
          org-clock-sound "~/emacs/spacemacs-config/bell.wav"
          org-enable-github-support t
          org-enable-asciidoc-support t
          org-enable-bootstrap-support t
          org-enable-reveal-js-support t
          org-enable-roam-support t
          org-enable-roam-protocol t
          org-roam-directory "~/Documents/org/Notes/"
          org-roam-dailies-directory "Journal/"
          org-roam-v2-ack t
          org-want-todo-bindings t
          org-latex-classes '("letter" "\\documentclass{letter}"
                              ("\\section{%s}" . "\\section*{%s}")
                              ("\\subsection{%s}" . "\\subsection*{%s}")
                              ("\\subsubsection{%s}" . "\\subsubsection*{%s}")))

     yaml

     ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
     ;;
     ;; Programming Tools
     ;;
     ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

     ;; Containers
     docker

     ;; Pair programming!
     floobits


     ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
     ;; Version Control
     ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

     ;; SPC g s opens Magit git client full screen (q restores previous layout)
     ;; show word-granularity differences in current diff hunk
     (git :variables
          git-magit-status-fullscreen t
          magit-diff-refine-hunk t
          git-enable-magit-todos-plugin t)

     ;; SPC g h to use GitHub repositories
     ;; SPC g g to use GitHub Gists
     github

     ;; Highlight changes in buffers
     ;; SPC g . transient state for navigating changes
     (version-control :variables
                      version-control-diff-tool 'diff-hl
                      version-control-global-margin t)

     ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
     ;; Completion and other smartness
     ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

     ;; Add tool tips to show doc string of functions
     ;; Show snippets in the auto-completion popup
     ;; Show suggestions by most commonly used
     (auto-completion :variables
                      auto-completion-idle-delay nil ; auto-completion on as soon as you start typing
                      auto-completion-enable-help-tooltip t
                      auto-completion-enable-snippets-in-popup t
                      auto-completion-enable-sort-by-usage t)

     ;; Use original flycheck fringe bitmaps
     (syntax-checking :variables
                      syntax-checking-use-original-bitmaps t)

     ;; https://practicalli.github.io/spacemacs/install-spacemacs/clojure-lsp/lsp-variables-reference.html
     (lsp :variables
          ;; Formatting and indentation - use Cider instead
          lsp-enable-on-type-formatting t
          ;; Set to nil to use CIDER features instead of LSP UI
          ;; Default t
          lsp-enable-indentation t
          lsp-enable-snippet t  ;; to test again

          ;; symbol highlighting - `lsp-toggle-symbol-highlight` toggles highlighting
          ;; subtle highlighting for doom-gruvbox-light theme defined in dotspacemacs/user-config
          lsp-enable-symbol-highlighting t

          ;; Show lint error indicator in the mode line
          lsp-modeline-diagnostics-enable nil
          lsp-modeline-diagnostics-scope nil
          lsp-modeline-code-actions-enable nil

          ;; popup documentation boxes
          lsp-ui-doc-enable t               ;; disable all doc popups
          lsp-ui-doc-show-with-cursor t     ;; doc popup for cursor
          lsp-ui-doc-show-with-mouse nil    ;; doc popup for mouse
          lsp-ui-doc-delay 1                ;; delay in seconds for popup to display

          ;; code actions and diagnostics text as right-hand side of buffer
          lsp-ui-sideline-enable nil
          lsp-ui-sideline-show-code-actions nil
          lsp-ui-sideline-show-diagnostics nil

          ;; reference count for functions (assume their maybe other lenses in future)
          lsp-lens-enable nil

          ;; Efficient use of space in treemacs-lsp display

          ;; Optimization for large files
          lsp-file-watch-threshold 10000

          lsp-idle-delay 5.000

          lsp-log-io nil

          ;; Rust
          lsp-rust-server 'rust-analyzer
          cargo-process-reload-on-modify t
          )

     ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
     ;; Visualizer
     ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

     ;; graphviz - open-source graph declaration system
     ;; Used to generated graphs of Clojure project dependencies
     ;; https://develop.spacemacs.org/layers/+lang/graphviz/README.html
     graphviz

     ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
     ;; Shell
     ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

     ;; SPC ' runs a shell in a popup buffer
     ;; To run your terminal shell, add
     ;; shell-default-shell 'vterm
     (shell :variables
            shell-default-shell 'vterm
            shell-default-term-shell "/bin/zsh"
            shell-default-width 30
            shell-default-position 'bottom
            terminal-here-mac-terminal-command 'iterm2)


     ) ;; End of dotspacemacs-configuration-layers


   ;; List of additional packages that will be installed without being wrapped
   ;; in a layer (generally the packages are installed only and should still be
   ;; loaded using load/require/use-package in the user-config section below in
   ;; this file). If you need some configuration for these packages, then
   ;; consider creating a layer. You can also put the configuration in
   ;; `dotspacemacs/user-config'. To use a local version of a package, use the
   ;; `:location' property: '(your-package :location "~/path/to/your-package/")
   ;; Also include the dependencies as they will not be resolved automatically.
   dotspacemacs-additional-packages '()

   ;; A list of packages that cannot be updated.
   dotspacemacs-frozen-packages '()

   ;; A list of packages that will not be installed and loaded.
   dotspacemacs-excluded-packages '()

   ;; Defines the behaviour of Spacemacs when installing packages.
   ;; Possible values are `used-only', `used-but-keep-unused' and `all'.
   ;; `used-only' installs only explicitly used packages and deletes any unused
   ;; packages as well as their unused dependencies. `used-but-keep-unused'
   ;; installs only the used packages but won't delete unused ones. `all'
   ;; installs *all* packages supported by Spacemacs and never uninstalls them.
   ;; (default is `used-only')
   dotspacemacs-install-packages 'used-but-keep-unused))

(defun dotspacemacs/init ()
  "Initialization:
This function is called at the very beginning of Spacemacs startup,
before layer configuration.
It should only modify the values of Spacemacs settings."
  ;; This setq-default sexp is an exhaustive list of all the supported
  ;; spacemacs settings.
  (setq-default
   ;; If non-nil then enable support for the portable dumper. You'll need
   ;; to compile Emacs 27 from source following the instructions in file
   ;; EXPERIMENTAL.org at to root of the git repository.
   ;; (default nil)
   dotspacemacs-enable-emacs-pdumper nil

   ;; Name of executable file pointing to emacs 27+. This executable must be
   ;; in your PATH.
   ;; (default "emacs")
   dotspacemacs-emacs-pdumper-executable-file "emacs"

   ;; Name of the Spacemacs dump file. This is the file will be created by the
   ;; portable dumper in the cache directory under dumps sub-directory.
   ;; To load it when starting Emacs add the parameter `--dump-file'
   ;; when invoking Emacs 27.1 executable on the command line, for instance:
   ;;   ./emacs --dump-file=$HOME/.emacs.d/.cache/dumps/spacemacs-27.1.pdmp
   ;; (default (format "spacemacs-%s.pdmp" emacs-version))
   dotspacemacs-emacs-dumper-dump-file (format "spacemacs-%s.pdmp" emacs-version)

   ;; If non-nil ELPA repositories are contacted via HTTPS whenever it's
   ;; possible. Set it to nil if you have no way to use HTTPS in your
   ;; environment, otherwise it is strongly recommended to let it set to t.
   ;; This variable has no effect if Emacs is launched with the parameter
   ;; `--insecure' which forces the value of this variable to nil.
   ;; (default t)
   dotspacemacs-elpa-https t

   ;; Maximum allowed time in seconds to contact an ELPA repository.
   ;; (default 5)
   dotspacemacs-elpa-timeout 5

   ;; Set `gc-cons-threshold' and `gc-cons-percentage' when startup finishes.
   ;; This is an advanced option and should not be changed unless you suspect
   ;; performance issues due to garbage collection operations.
   ;; (default '(100000000 0.1))
   dotspacemacs-gc-cons '(100000000 0.1)

   ;; Set `read-process-output-max' when startup finishes.
   ;; This defines how much data is read from a foreign process.
   ;; Setting this >= 1 MB should increase performance for lsp servers
   ;; in emacs 27.
   ;; (default (* 1024 1024))
   dotspacemacs-read-process-output-max (* 1024 1024 16)

   ;; If non-nil then Spacelpa repository is the primary source to install
   ;; a locked version of packages. If nil then Spacemacs will install the
   ;; latest version of packages from MELPA. Spacelpa is currently in
   ;; experimental state please use only for testing purposes.
   ;; (default nil)
   dotspacemacs-use-spacelpa nil

   ;; If non-nil then verify the signature for downloaded Spacelpa archives.
   ;; (default t)
   dotspacemacs-verify-spacelpa-archives t

   ;; If non-nil then spacemacs will check for updates at startup
   ;; when the current branch is not `develop'. Note that checking for
   ;; new versions works via git commands, thus it calls GitHub services
   ;; whenever you start Emacs. (default nil)
   dotspacemacs-check-for-update nil

   ;; If non-nil, a form that evaluates to a package directory. For example, to
   ;; use different package directories for different Emacs versions, set this
   ;; to `emacs-version'. (default 'emacs-version)
   dotspacemacs-elpa-subdirectory 'emacs-version

   ;; One of `vim', `emacs' or `hybrid'.
   ;; `hybrid' is like `vim' except that `insert state' is replaced by the
   ;; `hybrid state' with `emacs' key bindings. The value can also be a list
   ;; with `:variables' keyword (similar to layers). Check the editing styles
   ;; section of the documentation for details on available variables.
   ;; (default 'vim)
   dotspacemacs-editing-style 'vim

   ;; If non-nil show the version string in the Spacemacs buffer. It will
   ;; appear as (spacemacs version)@(emacs version)
   ;; (default t)
   dotspacemacs-startup-buffer-show-version t

   ;; Specify the startup banner. Default value is `official', it displays
   ;; the official spacemacs logo. An integer value is the index of text
   ;; banner, `random' chooses a random text banner in `core/banners'
   ;; directory. A string value must be a path to an image format supported
   ;; by your Emacs build.
   ;; If the value is nil then no banner is displayed. (default 'official)
   dotspacemacs-startup-banner 'official

   ;; List of items to show in startup buffer or an association list of
   ;; the form `(list-type . list-size)`. If nil then it is disabled.
   ;; Possible values for list-type are:
   ;; `recents' `recents-by-project' `bookmarks' `projects' `agenda' `todos'.
   ;; List sizes may be nil, in which case
   ;; `spacemacs-buffer-startup-lists-length' takes effect.
   ;; The exceptional case is `recents-by-project', where list-type must be a
   ;; pair of numbers, e.g. `(recents-by-project . (7 .  5))', where the first
   ;; number is the project limit and the second the limit on the recent files
   ;; within a project.
   dotspacemacs-startup-lists '((projects . 3)
                                (todos . 5)
                                (bookmarks . 20))

   ;; True if the home buffer should respond to resize events. (default t)
   dotspacemacs-startup-buffer-responsive t

   ;; Show numbers before the startup list lines. (default t)
   dotspacemacs-show-startup-list-numbers t

   ;; The minimum delay in seconds between number key presses. (default 0.4)
   dotspacemacs-startup-buffer-multi-digit-delay 0.4

   ;; Default major mode for a new empty buffer. Possible values are mode
   ;; names such as `text-mode'; and `nil' to use Fundamental mode.
   ;; (default `text-mode')
   dotspacemacs-new-empty-buffer-major-mode 'org-mode

   ;; Default major mode of the scratch buffer (default `text-mode')
   dotspacemacs-scratch-mode 'org-mode

   ;; If non-nil, *scratch* buffer will be persistent. Things you write down in
   ;; *scratch* buffer will be saved and restored automatically.
   dotspacemacs-scratch-buffer-persistent nil

   ;; If non-nil, `kill-buffer' on *scratch* buffer
   ;; will bury it instead of killing.
   dotspacemacs-scratch-buffer-unkillable t

   ;; Initial message in the scratch buffer, such as "Welcome to Spacemacs!"
   ;; (default nil)
   dotspacemacs-initial-scratch-message nil

   ;; List of themes, the first of the list is loaded when spacemacs starts.
   ;; Press `SPC T n' to cycle to the next theme in the list (works great
   ;; with 2 themes variants, one dark and one light)

   dotspacemacs-themes '(doom-one-light
                         doom-one)

   ;; Set the theme for the Spaceline. Supported themes are `spacemacs',
   ;; `all-the-icons', `custom', `doom', `vim-powerline' and `vanilla'. The
   ;; first three are spaceline themes. `doom' is the doom-emacs mode-line.
   ;; `vanilla' is default Emacs mode-line. `custom' is a user defined themes,
   ;; refer to the DOCUMENTATION.org for more info on how to create your own
   ;; spaceline theme. Value can be a symbol or list with additional properties.
   ;; (default '(spacemacs :separator wave :separator-scale 1.5))
   dotspacemacs-mode-line-theme '(doom)

   ;; If non-nil the cursor color matches the state color in GUI Emacs.
   ;; (default t)
   dotspacemacs-colorize-cursor-according-to-state t

   ;; Default font or prioritized list of fonts. The `:size' can be specified as
   ;; a non-negative integer (pixel size), or a floating-point (point size).
   ;; Point size is recommended, because it's device independent. (default 10.0)
   ;; Comment for recording mode
   dotspacemacs-default-font '(("JetBrainsMono Nerd Font"
                                :size 14
                                :weight normal
                                :width normal)
                               ("Sarasa Mono J"))

   ;; The leader key (default "SPC")
   dotspacemacs-leader-key "SPC"

   ;; The key used for Emacs commands `M-x' (after pressing on the leader key).
   ;; (default "SPC")
   dotspacemacs-emacs-command-key "SPC"

   ;; The key used for Vim Ex commands (default ":")
   dotspacemacs-ex-command-key ":"

   ;; The leader key accessible in `emacs state' and `insert state'
   ;; (default "M-m")
   dotspacemacs-emacs-leader-key "M-m"

   ;; Major mode leader key is a shortcut key which is the equivalent of
   ;; pressing `<leader> m`. Set it to `nil` to disable it. (default ",")
   dotspacemacs-major-mode-leader-key ","

   ;; Major mode leader key accessible in `emacs state' and `insert state'.
   ;; (default "C-M-m" for terminal mode, "<M-return>" for GUI mode).
   ;; Thus M-RET should work as leader key in both GUI and terminal modes.
   ;; C-M-m also should work in terminal mode, but not in GUI mode.
   dotspacemacs-major-mode-emacs-leader-key (if window-system "<M-return>" "C-M-m")

   ;; These variables control whether separate commands are bound in the GUI to
   ;; the key pairs `C-i', `TAB' and `C-m', `RET'.
   ;; Setting it to a non-nil value, allows for separate commands under `C-i'
   ;; and TAB or `C-m' and `RET'.
   ;; In the terminal, these pairs are generally indistinguishable, so this only
   ;; works in the GUI. (default nil)
   dotspacemacs-distinguish-gui-tab nil

   ;; Name of the default layout (default "Default")
   dotspacemacs-default-layout-name "Global"

   ;; If non-nil the default layout name is displayed in the mode-line.
   ;; (default nil)
   dotspacemacs-display-default-layout t

   ;; If non-nil then the last auto saved layouts are resumed automatically upon
   ;; start. (default nil)
   dotspacemacs-auto-resume-layouts t

   ;; If non-nil, auto-generate layout name when creating new layouts. Only has
   ;; effect when using the "jump to layout by number" commands. (default nil)
   dotspacemacs-auto-generate-layout-names nil

   ;; Size (in MB) above which spacemacs will prompt to open the large file
   ;; literally to avoid performance issues. Opening a file literally means that
   ;; no major mode or minor modes are active. (default is 1)
   dotspacemacs-large-file-size 1

   ;; Location where to auto-save files. Possible values are `original' to
   ;; auto-save the file in-place, `cache' to auto-save the file to another
   ;; file stored in the cache directory and `nil' to disable auto-saving.
   ;; (default 'cache)
   dotspacemacs-auto-save-file-location 'cache

   ;; Maximum number of rollback slots to keep in the cache. (default 5)
   dotspacemacs-max-rollback-slots 5

   ;; If non-nil, the paste transient-state is enabled. While enabled, after you
   ;; paste something, pressing `C-j' and `C-k' several times cycles through the
   ;; elements in the `kill-ring'. (default nil)
   dotspacemacs-enable-paste-transient-state t

   ;; Which-key delay in seconds. The which-key buffer is the popup listing
   ;; the commands bound to the current keystroke sequence. (default 0.4)
   dotspacemacs-which-key-delay 0.4

   ;; Which-key frame position. Possible values are `right', `bottom' and
   ;; `right-then-bottom'. right-then-bottom tries to display the frame to the
   ;; right; if there is insufficient space it displays it at the bottom.
   ;; (default 'bottom)
   dotspacemacs-which-key-position 'bottom

   ;; Control where `switch-to-buffer' displays the buffer. If nil,
   ;; `switch-to-buffer' displays the buffer in the current window even if
   ;; another same-purpose window is available. If non-nil, `switch-to-buffer'
   ;; displays the buffer in a same-purpose window even if the buffer can be
   ;; displayed in the current window. (default nil)
   dotspacemacs-switch-to-buffer-prefers-purpose nil

   ;; If non-nil a progress bar is displayed when spacemacs is loading. This
   ;; may increase the boot time on some systems and emacs builds, set it to
   ;; nil to boost the loading time. (default t)
   dotspacemacs-loading-progress-bar t

   ;; If non-nil the frame is fullscreen when Emacs starts up. (default nil)
   ;; (Emacs 24.4+ only)
   dotspacemacs-fullscreen-at-startup nil

   ;; If non-nil `spacemacs/toggle-fullscreen' will not use native fullscreen.
   ;; Use to disable fullscreen animations in OSX. (default nil)
   dotspacemacs-fullscreen-use-non-native nil

   ;; If non-nil the frame is maximized when Emacs starts up.
   ;; Takes effect only if `dotspacemacs-fullscreen-at-startup' is nil.
   ;; (default nil) (Emacs 24.4+ only)
   dotspacemacs-maximized-at-startup nil

   ;; If non-nil the frame is undecorated when Emacs starts up. Combine this
   ;; variable with `dotspacemacs-maximized-at-startup' in OSX to obtain
   ;; borderless fullscreen. (default nil)
   dotspacemacs-undecorated-at-startup nil

   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's active or selected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-active-transparency 100

   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's inactive or deselected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-inactive-transparency 90

   ;; If non-nil show the titles of transient states. (default t)
   dotspacemacs-show-transient-state-title t

   ;; If non-nil show the color guide hint for transient state keys. (default t)
   dotspacemacs-show-transient-state-color-guide t

   ;; If non-nil unicode symbols are displayed in the mode line.
   ;; If you use Emacs as a daemon and wants unicode characters only in GUI set
   ;; the value to quoted `display-graphic-p'. (default t)
   dotspacemacs-mode-line-unicode-symbols t

   ;; If non-nil smooth scrolling (native-scrolling) is enabled. Smooth
   ;; scrolling overrides the default behavior of Emacs which recenters point
   ;; when it reaches the top or bottom of the screen. (default t)
   dotspacemacs-smooth-scrolling t

   ;; Show the scroll bar while scrolling. The auto hide time can be configured
   ;; by setting this variable to a number. (default t)
   dotspacemacs-scroll-bar-while-scrolling nil

   ;; Control line numbers activation.
   ;; If set to `t', `relative' or `visual' then line numbers are enabled in all
   ;; `prog-mode' and `text-mode' derivatives. If set to `relative', line
   ;; numbers are relative. If set to `visual', line numbers are also relative,
   ;; but lines are only visual lines are counted. For example, folded lines
   ;; will not be counted and wrapped lines are counted as multiple lines.
   ;; This variable can also be set to a property list for finer control:
   ;; '(:relative nil
   ;;   :visual nil
   ;;   :disabled-for-modes dired-mode
   ;;                       doc-view-mode
   ;;                       markdown-mode
   ;;                       org-mode
   ;;                       pdf-view-mode
   ;;                       text-mode
   ;;   :size-limit-kb 1000)
   ;; When used in a plist, `visual' takes precedence over `relative'.
   ;; (default nil)
   ;; For some reason this causes a massive performance hit
   ;; dotspacemacs-line-numbers '(:relative nil
   ;;                             :disabled-for-modes dired-mode
   ;;                                                 doc-view-mode
   ;;                                                 pdf-view-mode
   ;;                             :size-limit-kb 1000)


   ;; Code folding method. Possible values are `evil', `origami' and `vimish'.
   ;; (default 'evil)
   dotspacemacs-folding-method 'evil

   ;; If non-nil and `dotspacemacs-activate-smartparens-mode' is also non-nil,
   ;; `smartparens-strict-mode' will be enabled in programming modes.
   ;; (default nil)
   dotspacemacs-smartparens-strict-mode t

   ;; If non-nil smartparens-mode will be enabled in programming modes.
   ;; (default t)
   dotspacemacs-activate-smartparens-mode t

   ;; If non-nil pressing the closing parenthesis `)' key in insert mode passes
   ;; over any automatically added closing parenthesis, bracket, quote, etc...
   ;; This can be temporary disabled by pressing `C-q' before `)'. (default nil)
   dotspacemacs-smart-closing-parenthesis t

   ;; Select a scope to highlight delimiters. Possible values are `any',
   ;; `current', `all' or `nil'. Default is `all' (highlight any scope and
   ;; emphasis the current one). (default 'all)
   dotspacemacs-highlight-delimiters 'all

   ;; If non-nil, start an Emacs server if one is not already running.
   ;; (default nil)
   dotspacemacs-enable-server t

   ;; Set the emacs server socket location.
   ;; If nil, uses whatever the Emacs default is, otherwise a directory path
   ;; like \"~/.emacs.d/server\". It has no effect if
   ;; `dotspacemacs-enable-server' is nil.
   ;; (default nil)
   dotspacemacs-server-socket-dir nil

   ;; If non-nil, advise quit functions to keep server open when quitting.
   ;; (default nil)
   dotspacemacs-persistent-server t

   ;; List of search tool executable names. Spacemacs uses the first installed
   ;; tool of the list. Supported tools are `rg', `ag', `pt', `ack' and `grep'.
   ;; (default '("rg" "ag" "pt" "ack" "grep"))
   dotspacemacs-search-tools '("rg" "ag" "pt" "ack" "grep")

   ;; Format specification for setting the frame title.
   ;; %a - the `abbreviated-file-name', or `buffer-name'
   ;; %t - `projectile-project-name'
   ;; %I - `invocation-name'
   ;; %S - `system-name'
   ;; %U - contents of $USER
   ;; %b - buffer name
   ;; %f - visited file name
   ;; %F - frame name
   ;; %s - process status
   ;; %p - percent of buffer above top of window, or Top, Bot or All
   ;; %P - percent of buffer above bottom of window, perhaps plus Top, or Bot or All
   ;; %m - mode name
   ;; %n - Narrow if appropriate
   ;; %z - mnemonics of buffer, terminal, and keyboard coding systems
   ;; %Z - like %z, but including the end-of-line format
   ;; If nil then Spacemacs uses default `frame-title-format' to avoid
   ;; performance issues, instead of calculating the frame title by
   ;; `spacemacs/title-prepare' all the time.
   ;; (default "%I@%S")
   dotspacemacs-frame-title-format nil

   ;; Format specification for setting the icon title format
   ;; (default nil - same as frame-title-format)
   dotspacemacs-icon-title-format nil

   ;; Show trailing whitespace (default t)
   dotspacemacs-show-trailing-whitespace t

   ;; Delete whitespace while saving buffer. Possible values are `all'
   ;; to aggressively delete empty line and long sequences of whitespace,
   ;; `trailing' to delete only the whitespace at end of lines, `changed' to
   ;; delete only whitespace for changed lines or `nil' to disable cleanup.
   ;; (default nil)
   dotspacemacs-whitespace-cleanup 'all

   ;; If non nil activate `clean-aindent-mode' which tries to correct
   ;; virtual indentation of simple modes. This can interfer with mode specific
   ;; indent handling like has been reported for `go-mode'.
   ;; If it does deactivate it here.
   ;; (default t)
   dotspacemacs-use-clean-aindent-mode t

   ;; If non-nil shift your number row to match the entered keyboard layout
   ;; (only in insert state). Currently supported keyboard layouts are:
   ;; `qwerty-us', `qwertz-de' and `querty-ca-fr'.
   ;; New layouts can be added in `spacemacs-editing' layer.
   ;; (default nil)
   dotspacemacs-swap-number-row nil

   ;; Either nil or a number of seconds. If non-nil zone out after the specified
   ;; number of seconds. (default nil)
   dotspacemacs-zone-out-when-idle nil

   ;; Run `spacemacs/prettify-org-buffer' when
   ;; visiting README.org files of Spacemacs.
   ;; (default nil)
   dotspacemacs-pretty-docs t

   ;; If nil the home buffer shows the full path of agenda items
   ;; and todos. If non nil only the file name is shown.
   dotspacemacs-home-shorten-agenda-source nil

   ;; If non-nil then byte-compile some of Spacemacs files.
   dotspacemacs-byte-compile nil))

(defun dotspacemacs/user-env ()
  "Environment variables setup.
This function defines the environment variables for your Emacs session. By
default it calls `spacemacs/load-spacemacs-env' which loads the environment
variables declared in `~/.spacemacs.env' or `~/.spacemacs.d/.spacemacs.env'.
See the header of this file for more information."
  (spacemacs/load-spacemacs-env))

(defun dotspacemacs/user-init ()
  "Initialization for user code:
This function is called immediately after `dotspacemacs/init', before layer
configuration.
It is mostly for variables that should be set before packages are loaded.
If you are unsure, try setting them in `dotspacemacs/user-config' first."

  ;; Detect System Appearace Change
  (defun my/apply-theme (appearance)
    "Load theme, taking current system APPEARANCE into consideration."
    (mapc #'disable-theme custom-enabled-themes)
    (pcase appearance
      ('light (load-theme 'doom-one-light t))
      ('dark (load-theme 'doom-one t))))

  (add-hook 'ns-system-appearance-change-functions #'my/apply-theme)

  (setq-default
   theming-modifications
   '((doom-one
      (mode-line :height 0.92)
      (mode-line-inactive :height 0.92))
     (doom-one-light
      (mode-line :height 0.92)
      (mode-line-inactive :height 0.92))))

  ;; Fixes missing dependency on GNU ls for insert-directory-program
  ;; Use `brew --prefix' to find location of gnu coreutils on MacOS.
  (setq insert-directory-program
        (substitute-in-file-name "$HOME/homebrew/opt/coreutils/libexec/gnubin/ls"))

  )  ;; End of dotspacemacs/user-int

(defun dotspacemacs/user-load ()
  "Library to load while dumping.
This function is called only while dumping Spacemacs configuration. You can
`require' or `load' the libraries of your choice that will be included in the
dump.")


(defun dotspacemacs/user-config ()
  "Configuration for user code:
This function is called at the very end of Spacemacs startup, after layer
configuration.
Put your configuration code here, except for variables that should be set
before packages are loaded."

  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;; Some breathing room while scrolling vertically
  (setq scroll-margin 10)
  ;; test this
  (setq-default display-line-numbers-width 3)

  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;; org-roam-graph config
  (setq org-roam-graph-extra-config
        '(("rankdir" . "TB")
          ("layout" . "sfdp")
          ("ratio" . "auto")
          ("overlap" . "prism")
          ("overlap_scaling" . "10")
          ("nodesep" . "10")
          ("splines" . "true")) org-roam-graph-max-title-length 25
          org-roam-graph-shorten-titles 'wrap)
  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;; Try to prevent savehist from eating so much RAM.
  (setq history-length 100)
  (put 'minibuffer-history 'history-length 50)
  (put 'evil-ex-history 'history-length 50)
  (put 'kill-ring 'history-length 25)
  (savehist-mode -1)
  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;; Keeping Helm history clean
  (setq history-delete-duplicates t)
  (setq extended-command-history
        (delq nil (delete-dups extended-command-history)))
  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;; Font for all Unicode chars
  (when (member "Sarasa Mono J" (font-family-list))
    (set-fontset-font t 'unicode "Sarasa Mono J" nil 'append))
  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;; This package allows you to set
  ;; a default scale for text and
  ;; the ability to scale the text
  ;; of all buffers at once.
  (use-package default-text-scale
    :defer t
    :config (default-text-scale-mode))
  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;; Org document preview github
  (use-package maple-preview
    :commands (maple-preview-mode)
    :defer t)
  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;; Truncate lines by default
  (setq truncate-lines t)
  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;; GC Messages
  (setq garbage-collection-messages t)
  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;; Keeping Helm history clean
  (setq history-delete-duplicates t)
  (setq extended-command-history
        (delq nil (delete-dups extended-command-history)))
  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;; Connecting to a reomote nREPL server
  (setq nrepl-use-ssh-fallback-for-remote-hosts t)
  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;; Keycast - show Emacs commands in mode line
  (use-package keycast
    :commands keycast-mode
    :config
    (define-minor-mode keycast-mode
      "Show current command and its key binding in the mode line."
      :global t
      (if keycast-mode
          (progn
            (add-hook 'pre-command-hook 'keycast-mode-line-update t)
            (add-to-list 'mode-line-misc-info '("" mode-line-keycast "    "))
            )
        (remove-hook 'pre-command-hook 'keycast-mode-line-update)
        (setq global-mode-string (remove '("" mode-line-keycast " ") mode-line-misc-info))))
    )
  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


  ;; Emacs text rendering optimizations
  ;; https://200ok.ch/posts/2020-09-29_comprehensive_guide_on_handling_long_lines_in_emacs.html

  ;; Only render text left to right
  (setq-default bidi-paragraph-direction 'left-to-right)

  ;; Disable Bidirectional Parentheses Algorithm
  (if (version<= "27.1" emacs-version)
      (setq bidi-inhibit-bpa t))

  ;; Files with known long lines
  ;; SPC f l to open files literally to disable most text processing

  ;; So long mode when Emacs thinks a file would affect performance
  (if (version<= "27.1" emacs-version)
      (global-so-long-mode 1))

  ;; End of: Emacs text rendering optimizations
  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;; Emacs latex configuration
  (add-hook 'doc-view-mode-hook 'auto-revert-mode)
  ;; End of: Emacs latex configuration
  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;; Doom theme settings
  (setq doom-gruvbox-light-variant "hard")
  ;;
  (defun wildwestrom/setup-custom-doom-modeline ()
    (doom-modeline-set-modeline 'my-modeline 'default))
  ;;
  (with-eval-after-load 'doom-modeline
    (doom-modeline-def-modeline 'my-modeline
      '(workspace-name window-number modals buffer-position persp-name buffer-info matches remote-host vcs)
      '(misc-info repl lsp))
    (wildwestrom/setup-custom-doom-modeline))

  ;; checker = flycheck results (not working)
  ;; buffer-position
  ;; word-count - number of words in current buffer
  ;; parrot
  ;; selection-info
  ;; repl - shows status of Cloure repl (not working)
  ;; process ??
  ;; debug
  ;; misc-info  - used for keycast
  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;; Over-ride Spacemacs defaults
  ;;
  ;; Set new location for file bookmarks, SPC f b
  ;; Default: ~/.emacs.d/.cache/bookmarks
  (setq bookmark-default-file "~/emacs/spacemacs-config/bookmarks")
  ;;
  ;; Set new location for recent save files
  ;; Default: ~/.emacs.d/.cache/recentf
  (setq recentf-save-file  "~/emacs/spacemacs-config/recentf")
  ;;
  ;; native line numbers taking up lots of space?
  (setq-default display-line-numbers-width nil)
  ;;
  ;; replace / search with helm-swoop in Evil normal state
  (evil-global-set-key 'normal "/" 'helm-swoop)
  ;;
  ;; replace / search with ivy-swiper in Evil normal state
  ;; (evil-global-set-key 'normal "/" 'swiper)
  ;;
  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;; Magit - forge configuration
  ;;
  ;; Set the files that are searched for writing tokens
  ;; by default ~/.authinfo will be used
  ;; and write a token in unencrypted format
  (setq auth-sources '("~/.authinfo.gpg"))
  ;;
  ;; Configure number of topics show, open and closed
  ;; use negative number to toggle the view of closed topics
  ;; using `SPC SPC forge-toggle-closed-visibility'
  (setq  forge-topic-list-limit '(100 . -10))
  ;; set closed to 0 to never show closed issues
  (setq  forge-topic-list-limit '(100 . 0))
  ;;
  ;; GitHub user and organization accounts owned
  ;; used by @ c f  to create a fork
  (setq forge-owned-accounts
        '(("wildwestrom")))
  ;; To blacklist specific accounts,
  ;; over-riding forge-owned-accounts
  ;; (setq forge-owned-blacklist
  ;;       '(("bad-hacks" "really-bad-hacks")))
  ;;
  ;; End of Magit - forge configuration
  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;; Safe structural editing
  ;; for all major modes
  (spacemacs/toggle-evil-safe-lisp-structural-editing-on-register-hooks)
  ;;
  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;; Version Control configuration - Git, etc
  ;;
  ;; diff-hl - diff hightlights in right gutter as you type
  (diff-hl-flydiff-mode)
  ;;
  ;; Load in magithub features after magit package has loaded
  ;; (use-package magithub
  ;;   :after magit
  ;;   :config (magithub-feature-autoinject t))
  ;;
  ;; Use Spacemacs as the $EDITOR (or $GIT_EDITOR) for git commits messages
  ;; when using git commit on the command line
  ;; (global-git-commit-mode t)
  ;;
  ;; Set locations of all your Git repositories
  ;; with a number to define how many sub-directories to search
  ;; `SPC g L' - list all Git repositories in the defined paths,
  (setq magit-repository-directories
        '(("~/emacs/spacemacs-config"  . 0)
          ("~/Code/" . 2)))
  ;;
  ;; end of version control configuration
  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;; Org-mode configuration
  ;;
  ;; Visual line navigation on by default in Org-mode buffers.
  (add-hook
   'org-mode-hook
   (lambda ()
     (spacemacs/toggle-visual-line-navigation-on)))
  ;;
  ;; Org-reveal - define were reveal.js files can be found
  ;; (I place reveal.js files in same directory as I write the org files)
  ;; (setq org-reveal-root "")
  ;;
  ;; Define the location of the file to hold tasks
  ;; (with-eval-after-load 'org
  ;;   (setq org-default-notes-file "~/Dropbox/todo-list.org"))
  ;;
  ;; Define a kanban style set of stages for todo tasks
  (with-eval-after-load 'org
    (setq org-todo-keywords
          '((sequence "TODO" "DOING" "BLOCKED" "REVIEW" "|" "DONE" "ARCHIVED"))))
  ;;
  ;; The default keywords all use the same colour.
  ;; Make the states easier to distinguish by using different colours
  ;; Using X11 colour names from: https://en.wikipedia.org/wiki/Web_colors
  ;; Setting colours (faces) using the `org-todo-keyword-faces' defcustom function
  ;; https://github.com/tkf/org-mode/blob/master/lisp/org-faces.el#L376
  ;; Using `with-eval-after-load' as a hook to call this setting when org-mode is run
  ;;
  (with-eval-after-load 'org
    (setq org-todo-keyword-faces
          '(("TODO" . "SlateGray")
            ("DOING" . "DarkOrchid")
            ("BLOCKED" . "Firebrick")
            ("REVIEW" . "Teal")
            ("DONE" . "ForestGreen")
            ("ARCHIVED" .  "SlateBlue"))))
  ;;
  ;;
  ;; Set TODO keyword faces if over-ridden by theme.
  (defun practicalli/set-todo-keyword-faces ()
    (interactive)
    (setq hl-todo-keyword-faces
          '(("TODO" . "SlateGray")
            ("DOING" . "DarkOrchid")
            ("BLOCKED" . "Firebrick")
            ("REVIEW" . "Teal")
            ("DONE" . "ForestGreen")
            ("ARCHIVED" .  "SlateBlue"))))
  ;;
  ;;
  ;; Progress Logging
  ;; When a TODO item enters DONE, add a CLOSED: property with current date-time stamp
  (with-eval-after-load 'org
    (setq org-log-done 'time))
  ;;
  ;;
  ;; customize org-mode's checkboxes with unicode symbols
  (add-hook
   'org-mode-hook
   (lambda ()
     "Beautify Org Checkbox Symbol"
     (push '("[ ]" . "☐") prettify-symbols-alist)
     (push '("[X]" . "☑" ) prettify-symbols-alist)
     (push '("[-]" . "❍" ) prettify-symbols-alist)
     (prettify-symbols-mode)))

  (with-eval-after-load 'ox-latex
    (add-to-list 'org-latex-classes
                 ;; '("koma-article"
                 ;;   "\\documentclass{scrartcl}"
                 ;;   ("\\section{%s}" . "\\section*{%s}")
                 ;;   ("\\subsection{%s}" . "\\subsection*{%s}")
                 ;;   ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
                 ;;   ("\\paragraph{%s}" . "\\paragraph*{%s}")
                 ;;   ("\\subparagraph{%s}" . "\\subparagraph*{%s}"))
                 '("letter"
                   "\\documentclass{letter}"
                   ("\\section{%s}" . "\\section*{%s}")
                   ("\\subsection{%s}" . "\\subsection*{%s}")
                   ("\\subsubsection{%s}" . "\\subsubsection*{%s}"))))

  ;;
  ;; Markdown mode hook for orgtbl-mode minor mode
  ;; (add-hook 'markdown-mode-hook 'turn-on-orgtbl)
  ;;
  ;; use org-re-reveal instead of org-reveal (which hasnt been updated in ages and breaks org-mode 9.2)
  ;; (use-package org-re-reveal :after org)
  ;;
  ;; End of Org-mode Configuration
  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;; Web-mode configuration
  ;;
  ;; Changing auto indent size for languages in html layer (web mode) to 2 (defaults to 4)
  (defun web-mode-indent-2-hook ()
    "Indent settings for languages in Web mode, markup=html, css=css, code=javascript/php/etc."
    (setq web-mode-markup-indent-offset 2)
    (setq web-mode-css-indent-offset  2)
    (setq web-mode-code-indent-offset 2))
  ;;
  (add-hook 'web-mode-hook  'web-mode-indent-2-hook)
  ;;
  ;; End of Web-mode configuration
  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;; Clojure configurations
  ;;
  ;; Do not indent single ; comment characters
  (add-hook 'clojure-mode-hook
            (lambda () (setq-local comment-column 0)))

  ;; Auto-indent code automatically
  ;; https://emacsredux.com/blog/2016/02/07/auto-indent-your-code-with-aggressive-indent-mode/
  (add-hook 'clojure-mode-hook #'aggressive-indent-mode)

  ;; Lookup functions in Clojure - The Essentail Reference book
  ;; https://github.com/p3r7/clojure-essential-ref
  (spacemacs/set-leader-keys "oh" 'clojure-essential-ref)
  ;;
  ;;
  ;; toggle reader macro sexp comment
  ;; toggles the #_ characters at the start of an expression
  (defun clojure-toggle-reader-comment-sexp ()
    (interactive)
    (let* ((point-pos1 (point)))
      (evil-insert-line 0)
      (let* ((point-pos2 (point))
             (cmtstr "#_")
             (cmtstr-len (length cmtstr))
             (line-start (buffer-substring-no-properties point-pos2 (+ point-pos2 cmtstr-len)))
             (point-movement (if (string= cmtstr line-start) -2 2))
             (ending-point-pos (+ point-pos1 point-movement 1)))
        (if (string= cmtstr line-start)
            (delete-char cmtstr-len)
          (insert cmtstr))
        (goto-char ending-point-pos)))
    (evil-normal-state))
  ;;
  ;; Assign keybinding to the toggle-reader-comment-sexp function
  (define-key global-map (kbd "C-#") 'clojure-toggle-reader-comment-sexp)
  ;;
  ;;
  ;; Toggle view of a clojure `(comment ,,,) block'
  (defun clojure-hack/toggle-comment-block (arg)
    "Close all top level (comment) forms. With universal arg, open all."
    (interactive "P")
    (save-excursion
      (goto-char (point-min))
      (while (search-forward-regexp "^(comment\\>" nil 'noerror)
        (call-interactively
         (if arg 'evil-open-fold
           'evil-close-fold)))))
  ;;
  (evil-define-key 'normal clojure-mode-map
    "zC" 'clojure-hack/toggle-comment-block
    "zO" (lambda () (interactive) (clojure-hack/toggle-comment-block 'open)))
  ;;
  ;; end of clojure configuration
  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;; MacOS/OSX
  ;; Disable touchpad zoom gestures
  ;;
  (define-key global-map (kbd "<magnify-up>") nil)
  (define-key global-map (kbd "<magnify-down>") nil)

  (defun practicalli-nothing ()
    (interactive)
    (message "Buttons are not toys") )

  (define-key global-map (kbd "<magnify-up>") 'practicalli-nothing)

  (setq frame-resize-pixelwise t)

  (setq trash-directory "~/.Trash")
  (setq helm-trash-default-directory "~/.Trash")
  ;;
  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;; Spaceline Doom theme settings
  ;; https://seagle0128.github.io/doom-modeline/
  ;; Configuration set in layer variables
  ;;
  ;; Set height of the modeline - will resize to height of text
  ;; (setq doom-modeline-height 12)

  ;; The left hand bar in the modeline
  ;; setting to zero shows a large box outline
  ;; (setq doom-modeline-bar-width 1)

  ;; Determine style of current filename / path displayed
  ;; default: auto
  ;; (setq doom-modeline-buffer-file-name-style 'relative-to-project)

  ;; default perspective name displayed in the mode-line.
  ;; (setq doom-modeline-display-default-persp-name t)

  ;; Do not show buffer encoding
  ;; (setq doom-modeline-buffer-encoding nil)

  ;; display GitHub notifications (requires `ghub' package)
  ;; (setq doom-modeline-github t)
  ;; The interval of checking GitHub.
  ;; (setq doom-modeline-github-interval (* 30 60))

  ;; GNUs notifications - default t
  ;; (setq doom-modeline-gnus nil)

  ;; IRC notifications - default t
  ;; (setq doom-modeline-irc nil)

  ;; Environment versions - default t
  ;; (setq doom-modeline-env-version t)

  ;; Use ascii rather than icon for modal state (more specific)
  ;; Icon not changing for doom-solarized-light theme
  ;; - icon changes color for doom-gruvbox-light theme
  ;; (setq doom-modeline-modal-icon nil)
  ;; End of Spaceline Doom theme settings
  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;; Get GPG pinentry working
  (require 'epg)
  (setq epg-pinentry-mode 'loopback)
  ;;
  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

  ;; End of dot-spacemacs/user-config

  )
(defun dotspacemacs/emacs-custom-settings ()
  "Emacs custom settings.
This is an auto-generated function, do not modify its content directly, use
Emacs customize menu instead.
This function is called at the very end of Spacemacs initialization."
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(safe-local-variable-values
   '((major-mode . nxml-mode)
     (eval
      (lambda nil
        (when
            (not
             (featurep 'clerk))
          (let
              ((init-file-path
                (expand-file-name "clerk.el" default-directory)))
            (when
                (file-exists-p init-file-path)
              (load init-file-path)
              (require 'clerk))))))
     (cider-jack-in-default . "bb nrepl-server")
     (cljr-suppress-no-project-warning . t)
     (cider-allow-jack-in-without-project quote t)
     (cljr-suppress-no-project-warning quote t)
     (cider-edit-jack-in-command: "bb --nrepl-server")
     (major-mode . clojure-mode)
     (cider-known-endpoints
      ("localhost" "8776"))
     (typescript-backend . lsp)
     (javascript-backend . lsp)))
 '(warning-suppress-types '((comp))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(mode-line ((t (:height 0.92))))
 '(mode-line-inactive ((t (:height 0.92)))))
)

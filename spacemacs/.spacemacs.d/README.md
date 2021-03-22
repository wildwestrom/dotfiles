# Spacemacs configuration
This repository is a fork of the [Practicalli Spacemacs Config](https://github.com/practicalli/spacemacs.d).  It contains the layers recommended for use for enhanced Clojure development experience as well as numerous tweaks for general [Spacemacs](https://github.com/syl20bnr/spacemacs/) usage.  The configuration also contains a number of snippets (code and configuration templates) for specific languages.

# Requirements: Spacemacs Develop, Emacs 27 and [Fira Code fonts](https://github.com/tonsky/FiraCode)

[![Spacemacs Practicalli - Interactive Clojure development with Emacs and CIDER](https://github.com/practicalli/spacemacs-content/blob/master/images/practicalli-spacemacs-book-banner.png)](https://practicalli.github.io/spacemacs)

## Recommended Command Line tools
There are several [command line tools that should be installed](https://practicalli.github.io/spacemacs/before-you-start/recommended-command-line-tools.html) to support the use of the Practicalli Spacemacs configuration.


## Using this configuration directly
In a terminal window, use git clone to copy your fork to your computer.

```git clone git@gitlab.com:wildwestrom/spacemacs-d.git ~/.spacemacs.d```

If you are happy to use my Spacemacs configuration as it is, then remove your `~/.spacemacs` file and start Emacs.

> Configuration is optomized for languages that are read left to right.  Change the configuration to use `(setq-default bidi-paragraph-direction 'right-to-left)` if you use right to left read languages.  Comment out this configuration if you use both.

## Use this configuration as an example
Clone this repository and review the configurations I have chosen, not everything may be to your preferred way of working.

The recommended approach is to use a diff tool, such as `ediff` in Emacs, `SPC D f` in Spacemacs, to compare my configuration with your own existing configuration.


## The main configuration file
The file `.spacemacs.d/init.el` is read by Spacemacs if the `.spacemacs` file does not exist.  You can used either file as your main Spacemacs configuration file (but obviously not both at the same time).  In this repository, the `.spacemacs` file is a symbolic link to `.spacemacs/init.el`.

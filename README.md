# Dotfiles MacOS

This is a collection of dotfiles for MacOS 11.

To install, run these commands:

1. First clone into a folder. I prefer `~/.dotfiles`.
```shell
git clone https://gitlab.com/wildwestrom/dotfiles.git ~/.dotfiles
```
2. Then move into that directory.
```shell
cd ~/.dotfiles
```
3. Now use gnu-stow to symbolicly link these files. 
Add -n option to do a dry run and make sure all your symlinks are correct.
```shell
stow -nvt ~ */ --ignore=.DS_Store
stow -vt ~ */ --ignore=.DS_Store
```

After the first stow, you can remove the option `--ignore=.DS_Store` as it is already in .stow-global-ignore in your home directory.

## License

This is free software under the GNU GPL Version 3.0.

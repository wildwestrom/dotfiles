# Dotfiles MacOS

This is a collection of dotfiles for MacOS 11.

To install, run these commands:

1. First clone into a folder. I prefer `~/.dotfiles`.
```shell
git clone https://gitlab.com/wildwestrom/dotfiles-gnu-linux.git ~/.dotfiles
```
2. Then move into that directory.
```shell
cd ~/.dotfiles
```
3. Now use gnu-stow to symbolicly link these files.  
Add -n option to do a dry run and make sure all your symlinks are correct.
```shell
stow -nvt ~ */
stow -vt ~ */
```

## License

This is free software under the GNU GPL Version 3.0.

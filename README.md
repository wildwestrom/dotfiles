# Dotfiles GNU/Linux

This is a collection of dotfiles for my various instances of GNU/Linux.

To install, run these commands:

```shell
# First clone into a folder. I prefer `~/.dotfiles`.
git clone https://gitlab.com/wildwestrom/dotfiles-gnu-linux.git ~/.dotfiles
# Then move into that directory
cd ~/.dotfiles
# Now use gnu-stow to symbolicly link these files. 
# Add -n option to do a dry run.
# stow -nvt ~ *
stow -vt ~ *
```

## License

This is free software under the GNU GPL Version 3.0.

# dotfiles
My dotfiles for Zsh, Vim, Tmux and more

### Installation
Clone to a bare repository (the target directory should match .gitignore):

```bash
$ git clone --bare https://github.com/ulondon/dotfiles.git $HOME/.dotfiles.git
```

Make alias for git:

```bash
$ alias dotfiles="/usr/bin/git --git-dir=$HOME/.dotfiles.git/ --work-tree=$HOME"
```

Set the flag showUntrackedFiles to no:

```bash
dotfiles config --local status.showUntrackedFiles no
```

Checkout:

```bash
dotfiles checkout
```

### More details
https://www.atlassian.com/git/tutorials/dotfiles

# Todo
- add stow instructions
- add tmux-battery as submodule
- add session-exmaple file that tmux.conf sources

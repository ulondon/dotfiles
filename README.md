# dotfiles
My dotfiles for Zsh, Vim, Tmux and more

## Installation
### GNU Stow
Clone repository
```bash
git clone https://github.com/ulondon/dotfiles.git $HOME/.dotfiles
```

Install [Stow](https://www.gnu.org/software/stow) and activate
```bash
cd $HOME/.dotfiles
stow --adpot .
```

Either revert changes or commit
```bash
cd $HOME/.dotfiles
git checkout
```

### Bare Repo
Clone to a bare repository (the target directory should match .gitignore):

```bash
git clone --bare https://github.com/ulondon/dotfiles.git $HOME/.dotfiles.git
```

Make alias for git:

```bash
alias dotfiles="/usr/bin/git --git-dir=$HOME/.dotfiles.git/ --work-tree=$HOME"
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
- add tmux-battery as submodule
- add session-exmaple file that tmux.conf sources

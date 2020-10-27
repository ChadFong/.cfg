# .cfg
Repo for dotfile configuration, set up to clone directly to $HOME

[Source](https://www.atlassian.com/git/tutorials/dotfiles)

## Steps

Set up this alias to enable `config` as the git command for the `$HOME` directory:
`alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'`

Ignore the folder where you'll clone your dotfiles, so that you don't create weird recursion problems:
`echo ".cfg" >> .gitignore`

Clone the dotfiles into a bare repository in a "dot" folder of your $HOME:
`git clone --bare git@github.com:ChadFong/.cfg.git $HOME/.cfg`

Checkout the actual content from the bare repository to your $HOME:
`config checkout`

Set the flag showUntrackedFiles to no on this specific (local) repository to avoid commiting unwanted files:
`config config --local status.showUntrackedFiles no`

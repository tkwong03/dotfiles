# dotfiles

This method of managing dotfiles is taken from [this article](https://www.atlassian.com/git/tutorials/dotfiles). It involves using a bare git repository in the home directory. This allows the git repository to track the dotfiles without the use of symlinks or copying from another directory.

Installing dotfiles onto a new system:

```console
git clone --bare https://github.com/tkwong03/dotfiles.git $HOME/.dotfiles
```

# dotfiles

This method of managing dotfiles is taken from [this article](https://www.atlassian.com/git/tutorials/dotfiles). It involves using a bare git repository in the home directory. This allows the git repository to track the dotfiles without the use of symlinks or copying from another directory.

## Installation:

Before cloning the bare repository, add the source repository to .gitignore:

```console
echo ".dotgit" >> .gitignore
```

Clone this repository as a bare repository as a hidden folder (folder name starts with a period):

```console
git clone --bare https://github.com/tkwong03/dotfiles.git $HOME/.dotgit
```

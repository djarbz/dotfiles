# dotfiles
Linux Configuration Dotfiles

### REFERENCE
* https://www.ackama.com/what-we-think/the-best-way-to-store-your-dotfiles-a-bare-git-repository-explained/
* https://www.atlassian.com/git/tutorials/dotfiles

#### To INSTALL on a new system
```bash
git clone --bare https://github.com/djarbz/dotfiles.git $HOME/.dotfiles
#git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME config --local status.showUntrackedFiles no
git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME checkout
```

#### To ADD additional files/folders
```bash
dotfiles status
dotfiles add <filepath>
# Do not use -m as you will be prompted with a commit message template
dotfiles commit
# Update the $HOME/.dotfiles/config url to the ssh url
# Add the ssh public key to github
dotfiles push
```

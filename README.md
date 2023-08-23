One-liner:
```bash
echo ".cfg" >> .gitignore &&
git clone --bare git@github.com:aerlingsson/dotfiles.git $HOME/.cfg &&
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME' &&
rm .bashrc .gitignore
bash &&
config checkout
```

bsd_dotfiles.git
============
dotfiles for OpenBSD
spacemacs
bash instead of ksh

```sh
cd $HOME
git clone https://github.com/j4sper/bsd_dotfiles.git dotfiles
ln -sf dotfiles/.bash_profile .
ln -sf dotfiles/.bashrc .
ln -sf dotfiles/.bashrc_custom .
ln -sf dotfiles/.bash_aliases .
ln -sf dotfiles/.spacemacs .
ln -sf dotfiles/.tmux.conf .
ln -sf dotfiles/.vimrc .

git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d
```

separate inputrc for bash and (pry, psql, etc)
```sh
ln -sf  dotfiles/.inputrc .
ln -sf  dotfiles/.inputrc.jasper .
```

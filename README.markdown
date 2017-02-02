hidesuke の dotfiles
====================

site : http://que.hateblo.jp/ ,  http://please.shachiku.me/

概要
----

* hidesukeのdotfilesです。
* vimのプラグイン管理は dein.vimを使うぞー https://github.com/Shougo/dein.vim

前提条件
-------

* brew が入ってる
* git が入ってる
* mac-vim-kaoriyaが入ってる

Setup
------

1. ホームディレクトリで git clone git@github.com:hidesuke/dotfiles.git
1. cd ~/dotfiles
1. cd ~/
1. ln -s ~/dotfiles/bash_profile .bash_profile
1. ln -s ~/dotfiles/vimrc .vimrc
1. ln -s ~/dotfiles/vimfiles .vim
  1. dein.vimを入れる https://github.com/Shougo/dein.vim
  1. installer.sh に渡す引数は `~/dotfiles/vimfiles/dein`



さいごに
--------

	　　　　　　　　*'``・* 。
	　　　　　　　　|　　　　 `*。
	　　　　 　　,｡∩　　　　 　* 　　　もうどうにでもな～れ
	　　　　　　+　(´･ω･`)　*｡+ﾟ
	　　　　　　`*｡ ヽ、　 つ *ﾟ*
	　　　　　　　`・+｡*・' ﾟ⊃ +ﾟ
	　　　　　　　☆　　 ∪~ ｡*ﾟ
	　 　　　　　　`・+｡*・ ﾟ


hidesuke の dotfiles
====================

site : http://que.hateblo.jp/ ,  http://please.shachiku.me/

概要
----

* hidesukeのdotfilesです。
* vimのプラグイン管理は dein.vimを使うぞー https://github.com/Shougo/dein.vim

前提条件
-------

* [iTerm2](http://www.iterm2.com) がはいってる
* [brew](http://brew.sh/index_ja.html) が入ってる
* git が入ってる

Setup
------

1. ホームディレクトリで git clone https://github.com/hidesuke/dotfiles.git 
1. cd ~/dotfiles
1. cd ~/
1. ln -s ~/dotfiles/zshrc .zshrc

その他
-----

* Macのスクリーンショットの保存先の変更 http://pc-karuma.net/mac-customize-screencapture-location/

```bash
$ defaults write com.apple.screencapture location ~/Pictures/screenshots
$ killall SystemUIServer
```


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


# Github及び、Herokuへのアカウント作成

# PRMapSelectorをローカル環境に構築するまで
## ライブラリインストール
    $ sudo apt-get install -y git-core build-essential curl zlib1g-dev libssl-dev libreadline-dev libyaml-dev libxml2-dev libxslt1-dev sqlite3 libsqlite3-dev libpq-dev
    $ sudo apt-get build-dep ruby-defaults

## Rubyのインストール
    $ git clone https://github.com/sstephenson/rbenv.git ~/.rbenv
    $ git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
    $ echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
    $ echo 'eval "$(rbenv init -)"' >> ~/.bashrc
    $ source ~/.bashrc
    $ rbenv install 2.1.0
    $ rbenv rehash
    $ rbenv global 2.1.0

## Railsインストール
    $ rbenv exec gem install bundler
    $ rbenv rehash
    $ mkdir ~/src
    $ cd ~/src
    $ git clone git@github.com:ltakeshi/PRMapSelector.git
    $ cd PRMapSelector
    $ rbenv exec bundle install
    # PRMapSelectorが起動するか確認。下記を実行すると、railsの鯖が立ち上がるので、
    # http://127.0.0.1:3000/ でアクセスして動作を確認。
    $ bundle exec rails server

# 想定される更新内容
## 既存のMapに対するルールの追加ないしは削除
1. config/pr_rules.yamlを参照しながらconfig/pr_maps.yamlを編集。
config/pr_maps.yamlの要らなくなったルールを行ごと消してもらえれば大丈夫です。

2. 動作確認
下記コマンドの後、ブラウザでhttp://127.0.0.1:3000/にアクセスして動作を確認
`$ bundle exec rails server`

3. 更新内容をgitに反映
gitで更新されたファイルをステージ
`$ git add .`

更新内容をコミット
`$ git commit -a -m "更新内容" `
この時、更新内容部分は"update マップ名"とか""add マップ名"といった感じです。

更新内容をサーバーにプッシュ
`$ git push origin master ;git push heroku master`
前のコマンドはgithubに対する更新
後ろのコマンドはherokuに対する更新となってます。
この作業の後に http://prmapselector.herokuapp.com/ にて更新が反映されてるか確認してください。

## 新規Mapの追加ないしは既存のMapの削除
今回はタイミングよく新マップが出たんで、それを例に取ります
1. http://www.realitymod.com/mapgallery/ からマップの画像を取得してapp/assets/images/に配置。
存在していない場合は app/assets/images/ 内にnoimage.jpgってのが存在してるんで、
それを新マップ名にコピーするなりシンボリックリンクを貼るなりしてください。
尚ファイル名はすべて小文字で記号等は一切なしでお願いします。
今回の場合だと sbenehoutskirts.jpg となってます。

2. config/pr_rules.yamlを参照しながらconfig/pr_maps.yamlを編集。
今回の場合だと

> sbenehoutskirts:  
   name: Sbeneh Outskirts  
   rules:  
     - 1  
     - 2  
     - 3  
     - 4  
     - 7  

という形式になってます。
仕様は https://github.com/ltakeshi/PRMapSelector を参照してもらえると分かりやすいかと。
記述場所は適切な位置に入れておいてください。
#本当はプログラム側でソートするような仕様にしておけばいいんでしょうが、そこまで考えが及んでなかったです、申し訳ない。

3. 動作確認
上記と同様
$ bundle exec rails server

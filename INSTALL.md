# Github及び、Herokuへのアカウント作成
## 承前
GithubとHerokuへの編集権限出すので、捨てなメールアドレスでもいいので、適当なメールアドレスを一つ教えてください。  
このマニュアルはUbuntu12.04にて作成してます。他のOSで作業する場合は適宜読み替えてください。  

## SSHの公開鍵認証用のファイルを作成(すでに存在してる場合は読み飛ばしてください)
`$ ssh-keygen`  
で公開鍵を作成。引数等を与えないとid_rsaとid_rsa.pubというファイルが生成されるはず

## Githubへの登録
1. [Github](https://github.com/)にアクセス。
1. アカウントを作成
1. AccountSettingsからSSH Keysという項目で公開鍵を登録
1. `$ ssh git@github.com`  を行う  
`Hi ユーザ名! You've successfully authenticated, but GitHub does not provide shell access.`という反応が返ってくれば終了です。
1. ここまで終了したらltakeshiまでご一報ください。作成していただいたアカウントに編集権限出します。

## Herokuへの登録
1. メールアドレスを教えていただき次第編集権限出します。
1. `heroku login`  でログイン出来るかどうか確認してください。

# PRMapSelectorをローカル環境に構築
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
    $ git remote add heroku git@heroku.com:prmapselector.git
    $ rbenv exec bundle install
    # PRMapSelectorが起動するか確認。下記を実行すると、railsの鯖が立ち上がるので、
    # http://127.0.0.1:3000/ でアクセスして動作を確認。
    $ bundle exec rails server

# 想定される更新内容
## 既存のMapに対するルールの追加ないしは削除
1. config/pr_rules.yamlを参照しながらconfig/pr_maps.yamlを編集。  
config/pr_maps.yamlの要らなくなったルールを行ごと消してもらえれば大丈夫です。

1. 動作確認  
下記コマンドの後、ブラウザで http://127.0.0.1:3000/ にアクセスして動作を確認  
`$ bundle exec rails server`

1. 更新内容をgitに反映  
gitで更新されたファイルをステージ  
`$ git add .`

1. 更新内容をコミット  
`$ git commit -a -m "更新内容" `  
この時、更新内容部分は"update マップ名"とか"add マップ名"といった感じです。

1. 更新内容をサーバーにプッシュ  
`$ git push origin master ;git push heroku master`  
前のコマンドはgithubに対する更新  
後ろのコマンドはherokuに対する更新となってます。  
この作業の後に http://prmapselector.herokuapp.com/ にて更新が反映されてるか確認してください。

## 新規Mapの追加ないしは既存のMapの削除
今回はタイミングよく新マップが出たんで、それを例に取ります

1. [Project Reality: BF2 Map Gallery](http://www.realitymod.com/mapgallery/) からマップの画像を取得してapp/assets/images/に配置。
存在していない場合は app/assets/images/ 内にnoimage.jpgってのが存在してるんで、
それを新マップ名にコピーしてください。
<del>尚ファイル名はすべて小文字で記号等は一切なしでお願いします。</del>
ファイル名は基本小文字な英字で、どうしても記号を使う場合は\_等のエスケープが必要ない文字でお願いします。
今回の場合だと __sbenehoutskirts.jpg__ となってます。

1. config/pr_rules.yamlを参照しながらconfig/pr_maps.yamlを編集  
今回の場合だと下記のようになっています。  
仕様は https://github.com/ltakeshi/PRMapSelector を参照してもらえると分かりやすいかと。  
記述場所は適切な位置に入れておいてください。  
```yaml
sbenehoutskirts:
  name: Sbeneh Outskirts
  rules:
    - 1
    - 2
    - 3
    - 4
    - 7
```

これ以降は[上記例](https://github.com/ltakeshi/PRMapSelector/blob/master/INSTALL.md#%E6%97%A2%E5%AD%98%E3%81%AEmap%E3%81%AB%E5%AF%BE%E3%81%99%E3%82%8B%E3%83%AB%E3%83%BC%E3%83%AB%E3%81%AE%E8%BF%BD%E5%8A%A0%E3%81%AA%E3%81%84%E3%81%97%E3%81%AF%E5%89%8A%E9%99%A4)の2.以降と同じ動きになります。

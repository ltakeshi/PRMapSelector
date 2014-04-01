# PRMapSelector
## 概要
PRMapSelectorは[BF2:PR](http://www.realitymod.com/)の日本人コミュニティである[Battlefield2:ProjectReality 日本総合コミュニティ](http://projectreality-jp.blogspot.jp/)にて毎週土曜日に行われるイベントのマップ選定を補助するために製作しました。

## 仕様
### 設定ファイル
config/pr\_maps.yamlとconfig/pr\_rules.yamlを参照して以下のようなフォーマットの文字列を出力します。

* Al Basrah: INS Std
* Burning Sands: AAS Large
* Hill 488: AAS Alt
* Shijia Valley: C&C Std 

#### config/pr\_maps.yaml
config/pr\_maps.yamlはYAML形式になっており、以下のフォーマットとなっています。
<pre>
albasrah:
    name: Al Basrah
	rules:
        - 6
    	- 7
    	- 8
</pre>
上記の例はAl Basrahですが、その他の場合も同様です。具体的には
<pre>
    albasrah:
</pre>
でプログラム内で参照される名前を設定します。すべて小文字で空白等は除去したものを使用します。
<pre>
    name: Al Basrah
</pre>
マップの正式名称を設定しています。これが最終的なフォーマットの出力の際に利用されます。特殊な文字が存在している場合はエスケープなどしてください。例としては以下のようになります。
<pre>
    name: 'Charlie''s Point'
</pre>
ルールを設定しているのは以下の行になります。
<pre>
	rules:
        - 6
    	- 7
    	- 8
</pre>
ルールはconfig/pr\_rules.yamlを参照しており、ルールを選択する際に使用されます。

#### config/pr\_rules.yaml
config/pr\_rules.yamlはYAML形式になっており、以下のフォーマットとなっています。
<pre>
1: AAS Inf
2: AAS Alt
</pre>
見れば分かるだろうから詳細は略。

#### *.html.erb内のjavascriptについて
jQuery+Javascriptについては素人なので(他もあまり変わらないけど)動けばいいや程度で作ってます。問題があれば自由に直してください。

### デザインについて
基本[twitter-bootstrap](http://getbootstrap.com/)と[masonry](http://masonry.desandro.com/)を利用してデザインしています。問題があれば自由に直してください。

## 既知の問題

* マップを選択していなくてもルールを選択する画面に遷移できる。マップ選択ページにてJavascriptで対応しようと思ったけど、技術力不足により未実装。
* app/assets/imagesにあるイメージは[Project Reality: BF2 Map Gallery](http://www.ancientdev.com/mapgallery/)から無断で持ってきてるんでコレ問題になるかも。問題になってから対応でもいいかな。正直良い案が浮かばない。
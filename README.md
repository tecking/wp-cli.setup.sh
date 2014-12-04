# wp-cli.setup.sh

## これは何?

黒い画面で WordPress のさまざまな操作ができるツール [WP-CLI](http://wp-cli.org/) をレンタルサーバに導入するためのシェルスクリプトです。『[WP-CLI Advent Calendar 2014](http://www.adventar.org/calendars/505)』向けネタとしてつくりました。

『[さくらのレンタルサーバ](http://www.sakura.ne.jp/)』（スタンダードプラン以上）、『[ヘテムル（heteml）](http://heteml.jp/)』への導入を想定しています。

## 導入手順 

1. 契約しているサーバのホームディレクトリに SSH でログイン
2. ``wget --no-check-certificate https://raw.githubusercontent.com/tecking/wp-cli.setup.sh/master/wp-cli.setup.sh`` で本スクリプト（ wp-cli.setup.sh ）をダウンロード
3. ``chmod +x wp-cli.setup.sh`` で本スクリプトのパーミッションを変更
4. ``./wp-cli.setup.sh`` で本スクリプトを実行
5. メッセージに沿って ``source ~/.cshrc`` または ``source ~/.bash_profile`` を実行

## 留意事項

* At Your Own Risk にてお使いください
* WP-CLI 本体（wp-cli.phar）は、スクリプト実行時につくられる ~/usr/local/bin にダウンロードされます
* bash 用のタブ補完定義ファイル（wp-completion.bash）は ~/ にダウンロードされます
* WP-CLI が導入できたら本スクリプトは削除してもかまいません
* 下記の環境なら、『さくらのレンタルサーバ』『ヘテムル』以外でもスクリプトが実行できそうです
 * sh が使える（``which sh`` で確認）
 * wget が使える（本スクリプト内で wget の有無を判定しています）
 * ログインシェルが csh または bash （デフォルトのログインシェル：さくらのレンタルサーバ＝csh、ヘテムル＝bash）

# wp-cli.setup.sh

## これは何?

黒い画面で WordPress のさまざまな操作ができるツール [WP-CLI](http://wp-cli.org/) をレンタルサーバに導入するためのシェルスクリプトです。『[WP-CLI Advent Calendar 2014](http://www.adventar.org/calendars/505)』向けネタとしてつくりました。

『[さくらのレンタルサーバ](http://www.sakura.ne.jp/)』（スタンダードプラン以上）、『[ヘテムル（heteml）](http://heteml.jp/)』への導入を想定しています。

## 使い方

1. 契約しているサーバのホームディレクトリに SSH でログイン
2. ``wget --no-check-certificate https://raw.githubusercontent.com/tecking/wp-cli.setup.sh/master/wp-cli.setup.sh`` で本スクリプトをダウンロード
3. ``chmod +x wp-cli.setup.sh`` で wp-cli.setup.sh に実行権を付与
4. ``./wp-cli.setup.sh`` を実行
5. メッセージに沿って ``source ~/.cshrc`` または ``source ~/.bash_profile`` を実行

## 留意事項

* At Your Own Risk にてお使いください（プルリクエスト歓迎です）
* 基本的に、ログインシェルが csh または bash の環境で有効です（デフォルトのログインシェル：さくらのレンタルサーバ＝csh、ヘテムル＝bash）
# wp-cli.setup.sh

## これは何?

黒い画面で WordPress のさまざまな操作ができるツール [WP-CLI](http://wp-cli.org/) をレンタルサーバに導入するためのシェルスクリプトです。『[WP-CLI Advent Calendar 2014](http://www.adventar.org/calendars/505)』向けネタとしてつくりました。

『[さくらのレンタルサーバ](http://www.sakura.ne.jp/)』（スタンダードプラン以上）、『[ヘテムル（heteml）](http://heteml.jp/)』への導入を想定しています。

## 使い方

1. 本ページ右側にある Download ZIP ボタンをクリックし、ZIP ファイルをダウンロード
2. ダウンロードしたファイルを展開し、wp-cli.setup.sh を抽出
3. wp-cli.setup.sh をレンタルサーバのホームディレクトリにアップロード（SFTP・FTPS推奨）
4. サーバのホームディレクトリに SSH でログイン
5. **chmod +x wp-cli.setup.sh** で wp-cli.setup.sh に実行権を付与
6. **./wp-cli.setup.sh** を実行
7. メッセージに沿って **source ~/.cshrc** または **source ~/.bash_profile** を実行

## 留意事項

* At Your Own Risk にてお使いください（プルリクエスト歓迎です）
* 基本的に、ログインシェルが csh または bash の環境で有効です（さくらのレンタルサーバ＝csh、ヘテムル＝bash）
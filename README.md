# Flutterのチュ～トリアルなり！！！
静的解析とかフォーマットの設定からやっていくなり。

## ゼロから環境構築をした時に行ったこと

### コミット時に自動でlintチェックとコードフォーマットをするためのLefthookの導入
`npm i -D lefthook`

コミット時に自動でlintとコードフォーマットのチェックが動く。失敗すればコミットされない。
`lefthook.yml`が設定ファイルなので、他プロジェクトで流用するときはコピペする。

### lintの設定
`analysis_options.yaml`で設定している。これはFlutterが使っている設定を元に若干の修正を加えている。
`analysis_options.yaml`にある`public_member_api_docs`のルールだけよく分からんのでコメントアウトにした。
[https://github.com/flutter/packages/blob/main/analysis_options.yaml]

`dart analyze`をターミナルで実行すればlintが動く。

## cloneした時に行うこと
`flutter pub get`
`npm i`

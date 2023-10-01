# Flutterのチュ～トリアルなり！！！
静的解析とかフォーマットの設定からやっていくなり。

## ✅ゼロから環境構築する手順
要はリポジトリ作成の時点からの話です。

### コミット時に自動でlintチェックとコードフォーマットをするためのLefthookの導入
`npm i -D lefthook`

コミット時に自動でlintとコードフォーマットのチェックが動く。失敗すればコミットされない。
`lefthook.yml`が設定ファイルなので、他プロジェクトで流用するときはコピペする。

### lintのルール設定
`analysis_options.yaml`で設定している。これはFlutterが使っている設定を元に若干の修正を加えている。
`analysis_options.yaml`にある`public_member_api_docs`のルールだけよく分からんのでコメントアウトにした。
[https://github.com/flutter/packages/blob/main/analysis_options.yaml]

`dart analyze`をターミナルで実行すればlintが動く。

### VSCodeでの自動コードフォーマットの設定
`settings.json`に
```
{
    "editor.formatOnSave": true,
    "editor.formatOnType": true,
    "editor.formatOnPaste": true
}
```
を記載すればOK。
あとはDartの拡張機能
```
名前: Dart
ID: Dart-Code.dart-code
説明: Dart language support and debugger for Visual Studio Code.
パブリッシャー: Dart Code
VS Marketplace リンク: https://marketplace.visualstudio.com/items?itemName=Dart-Code.dart-code
```
を導入すれば完了！！

## ✅cloneした時に行うこと
`flutter pub get`
`npm i`

## next-example
Next.jsのキャッチアップ用に作成したプロジェクト

## 初期化
```bash
make init
```

## 起動方法
```bash
make up
```

## ディレクトリ構成
```bash
tree app -N -L 1
app
├── README.md
├── next-env.d.ts # Next.jsでTypeScriptの型を使用するためのファイル
├── next.config.mjs # Next.jsの動作設定を行うファイル
├── node_modules # インポートしたモジュールを格納するディレクトリ
├── package-lock.json # パッケージ情報を含むファイル
├── package.json # パッケージ情報を含むファイル。起動コマンドやビルドコマンドも記述
├── postcss.config.mjs # tailwind.cssの設定ファイル
├── src # メインとなるソースを格納するディレクトリ。配下のappディレクトリにはApp Routerの設定を記述。
├── tailwind.config.ts # tailwind.cssの設定ファイル
└── tsconfig.json # TypeScriptの設定ファイル
```

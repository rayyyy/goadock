# goadock
goaの開発環境のテンプレート
これを立ち上げる事によってすばやくgoaプロジェクトを立ち上げられます。

* mysql
* adminer
* migrate - migrationツール
* gen - DBスキーマからstructの生成ツール
* dep - 依存関係管理ツール

## 前提
```
$ docker -v
Docker version 18.06.0-ce, build 0ffa825
$ docker-compose -v
docker-compose version 1.22.0, build f46880f
```

## 使い方

### .envについて
mysqlのパスワードは.envに定義します。
```
cp .env.example .enc
```
をして、設定を変えてください。


### 起動
Makefileを利用して、コマンドを簡略化してます。
```
git clone https://github.com/rayyyy/goadock
make up
make exec # コンテナの中に入るためのコマンド
```

### VS Code
本環境はVS Codeを使うこと前提で作っております。
エディタが違うのであれば、
.vscode
を消してもらって構いません。

## 実行環境について
goaがある程度完成したら実行環境を作るってもいいかもしれません。
dockerのmulti-stage機能を使います。
ここはまた追記します。
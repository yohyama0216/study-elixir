# HelloWorldを通してElixir文法になれよう。
HelloWorldを色々な形で行うことで慣れるこころみ。

1. 環境構築
初心者のうちは面倒なのでPaiza.ioを使う。

## 入門編
### 基本文法
#### シンプルなやつ
```
IO.puts "HelloWorld"
```
#### 変数を使う
```
message = "HelloWorld"
IO.puts message
```

#### 文字列の結合
```
hello = "Hello"
world = "World"
greeting = hello <> ", " <> world <> "!"
IO.puts greeting
```
#### 文字列の置換
```
original = "message"
replaced = String.replace(original, "message", "HelloWorld")
IO.puts replaced
```
#### 文字列の正規表現置換
```
original = "abc123abc"
replaced = String.replace(original, ~r/\d+/, "HelloWorld", global: true)
IO.puts replaced
```
  
### リスト
- 配列のキーにアクセスver
- リストの要素を結合するver: list_join_helloworld.exs
### マップ
#### マップの要素にアクセス
```
message = %{"text" => "HelloWorld"}
IO.puts message["text"]
```

### 条件文
- 条件文ver

### 繰り返し
- 繰り返し

## 中級編
### ファイル操作
- ファイル名を出力
- ファイルに出力
- ファイル読み込み

#### 画像操作

#### Excel操作

#### Json操作

### ajax操作

### CLI操作

### DB操作

### テスト

## 応用



- 





# メモ
## 構成
シンプルにelixirだけを入れている。フレームワークは無し。
## dockerのビルド
docker build -t elixir-cli-app .

## コンテナ起動&コンテナに入る
### マウントを追加ver
docker run -v %cd%/lib:/app/lib -it elixir-cli-app bash
// docker run -v $(pwd)/lib:/app/lib -it elixir-cli-app bash



# Elixirの公式イメージをベースとして使用
FROM elixir:latest

# アプリケーションディレクトリを作成
WORKDIR /app

# HexとRebarをインストール
RUN mix local.hex --force && \
    mix local.rebar --force

# アプリケーションのソースコードをコピー
COPY . .

# コンテナが実行された際にデフォルトで行うコマンド
# ここでは何も実行しない、または特定のElixirスクリプトを実行するように設定できます
CMD ["echo", "Elixir Docker container ready."]

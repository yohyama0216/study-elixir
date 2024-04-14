defmodule Scraper do
  # HTTPoisonとFlokiを使用するために、外部ライブラリをインポート
  require HTTPoison
  import Floki

  def fetch_and_parse(url) do
    case HTTPoison.get(url) do
      # パターンマッチング
      {:ok, %HTTPoison.Response{status_code: 200, body: body}} ->
        # HTMLコンテンツから特定のデータを抽出
        body
        |> parse("<h1>")  # ここでタグを指定
        |> Enum.each(fn(element) -> IO.puts(element) end)

      {:ok, %HTTPoison.Response{status_code: status_code}} ->
        IO.puts("Failed to fetch data. Status code: #{status_code}")

      {:error, %HTTPoison.Error{reason: reason}} ->
        IO.puts("Error occurred: #{reason}")
    end
  end

  defp parse(html, tag) do
    html
    |> Floki.find(tag)
    |> Floki.text()
  end
end

# 使用例
Scraper.fetch_and_parse("https://www.example.com")




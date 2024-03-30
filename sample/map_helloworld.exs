# マップの文字列を定義
message = %{"text" => "HelloWorld"}
IO.puts message["text"]

# マップの文字列をアトムで定義
message = %{:text => "HelloWorld"}
IO.puts message[:text]

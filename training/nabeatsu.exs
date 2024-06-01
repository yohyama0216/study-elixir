defmodule Nabeatsu do
  def check_numbers(range) do
    Enum.each(range, fn number ->
      if nabeatsu?(number) do
        IO.puts("アホー")
      else
        IO.puts(number)
      end
    end)
  end

  defp nabeatsu?(number) do
    rem(number, 3) == 0 or Integer.to_string(number) |> String.contains?("3")
  end
end

# テスト実行
Nabeatsu.check_numbers(1..30)

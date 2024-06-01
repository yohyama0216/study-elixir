defmodule FizzBuzz do
  def run do
    1..100
    |> Enum.each(&fizzbuzz/1)
  end

  defp fizzbuzz(n) do
    cond do
      rem(n, 15) == 0 -> IO.puts("FizzBuzz")
      rem(n, 3) == 0 -> IO.puts("Fizz")
      rem(n, 5) == 0 -> IO.puts("Buzz")
      true -> IO.puts(n)
    end
  end
end

# 実行
FizzBuzz.run()

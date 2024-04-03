defmodule FizzBuzz do
  def print(n) when n > 0 do
    print(n - 1)
    fizzbuzz(n)
  end

  def print(0), do: :ok

  defp fizzbuzz(n) when rem(n, 15) == 0 do
    IO.puts "FizzBuzz"
  end
  defp fizzbuzz(n) when rem(n, 3) == 0 do
    IO.puts "Fizz"
  end
  defp fizzbuzz(n) when rem(n, 5) == 0 do
    IO.puts "Buzz"
  end
  defp fizzbuzz(n) do
    IO.puts n
  end
end

FizzBuzz.print(15)

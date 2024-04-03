defmodule HelloWorld do
  # 引数がない場合
  def greet do
    IO.puts "Hello, World!"
  end

  # 引数が1つの場合
  def greet(name) do
    IO.puts "Hello, #{name}!"
  end
end

Greeter.greet()        # 出力: Hello, World!
Greeter.greet("Elixir")  # 出力: Hello, Elixir!

defmodule FileExample do
  def read_lines(file_path) do
    file_path
    |> File.stream!()
    |> Enum.each(fn line -> 
      IO.puts("#{String.trim(line)}: #{String.length(line)} characters")
    end)
  end
end

# 使用例
FileExample.read_lines("path/to/your/file.txt")

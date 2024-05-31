# 問題
## 配列からスコアの計算
与えられたリストに対して、mapでそれぞれのスコアに変換、変換した値を全部足す。

defmodule Football do
  def calculate_points(results) do
    results
    |> Enum.map(&parse_result/1)
    |> Enum.sum()
  end

  defp parse_result(result) do
    [x, y] = String.split(result, ":") |> Enum.map(&String.to_integer/1)　// 分割した文字列を数値化。そして変数として宣言
    case x - y do
      diff when diff > 0 -> 3
      0 -> 1
      _ -> 0
    end
  end
end

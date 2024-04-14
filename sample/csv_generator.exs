defmodule CsvExample do
  alias CSV, as: CsvLib

  def write_csv do
    data = [
      ["Name", "Age", "City"],
      ["Alice", 30, "New York"],
      ["Bob", 22, "Los Angeles"],
      ["Carol", 25, "Chicago"]
    ]

    # CSVデータを文字列として生成
    csv_data = CsvLib.encode_to_iodata(data)

    # ファイルに書き込み
    File.write!("users.csv", csv_data)
  end
end

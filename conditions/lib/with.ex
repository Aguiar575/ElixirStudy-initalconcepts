defmodule Conditions.With do
  def change_file(filename) do
    with {:ok, content} <- File.read(filename),
          :ok <- change(content) do
            {:ok, "File written!"}
          else
            error -> IO.puts("Error")
          end
  end

  defp change(content) do
    content = content <> "test"
    File.write("text.txt", content)
  end
end

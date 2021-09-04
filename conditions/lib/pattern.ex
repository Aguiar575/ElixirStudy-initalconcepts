defmodule Conditions.Pattern do
  def change_file(filename) do
    filename
    |> File.read()
    |> change()
    |> handle_wr()
  end

  defp change({:ok, content}) do
    content = content <> "teste"
    File.write("text.txt", content)
  end

  defp change({:error, _reason } = error), do: error

  defp handle_wr(:ok), do: {:ok, "File Updated!"}
  defp handle_wr({:error, _reason} = error ), do: error

end

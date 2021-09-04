defmodule Conditions.Case do
  def change_file(filename) do

    case File.read(filename) do
      {:ok, content} ->
        content
        |> change()
        |> handle_wr()

      {:error, _reason} = error ->
        error
    end
  end

  defp change(content) do
    content = content <> "test"
    File.write("text.txt", content)
  end


  defp handle_wr(:ok), do: {:ok, "File Updated!"}
  defp handle_wr({:error, _reason} = error ), do: error

end

defmodule ExecFile.CLI do
  @moduledoc """
    this main module is a entry point of a executable
  """

  @doc """
    parse word to uppercase

    ## Examples

      ./exec_file Hello
      HELLO
  """
  def main(args \\ []) do
    args
    |> parse_args()
    |> response()
    |> IO.puts()
  end

  defp parse_args(args) do
    {opts, word, _} =
      args
      |> OptionParser.parse(switches: [upcase: :boolean])

    {opts, List.to_string(word)}
  end

  defp response(word) do
    String.upcase(word)
  end
end
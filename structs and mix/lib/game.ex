defmodule Gamex.Game do
  @moduledoc """
    Module focused on the study of Structs
  """

  @keys [:title, :publisher, :release_date]
  @enforce_keys @keys

  defstruct @keys

  @doc """
    three parameters for instantiate a struct
  """
  def build(title, publisher, release_date) do
    %__MODULE__{title: title,
                publisher: publisher,
                release_date: release_date}
  end
end
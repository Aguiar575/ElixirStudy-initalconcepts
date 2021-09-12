defmodule Weabanex.Users.Get do
  alias Ecto.UUID
  alias Weabanex.{Repo, User}

  @spec call(any) :: {:error, <<_::104>>} | {:ok, <<_::288>>}
  def call(id) do
    id
    |> UUID.cast()
    |> handle_error()
  end

  defp handle_error(:error) do
    {:error, "Invalid Id."}
  end

  defp handle_error({:ok, uuid}) do
    case Repo.get(User, uuid) do
      nil -> {:error, "User not found."}
      user -> {:ok, user}
    end
  end
end

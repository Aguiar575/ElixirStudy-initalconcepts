defmodule Weabanex.Users.Create do
  alias Weabanex.{Repo, User}

  @spec call(:invalid | %{optional(:__struct__) => none, optional(atom | binary) => any}) ::
          Ecto.Changeset.t()
  def call(params) do
    params
    |> User.changeset()
    |> Repo.insert()
  end
end

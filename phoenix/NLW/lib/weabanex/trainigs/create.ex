defmodule Weabanex.Trainings.Create do
  alias Weabanex.{Training, Repo}

  def call(params) do
    params
    |> Training.changeset()
    |> Repo.insert()
  end
end

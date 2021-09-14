defmodule WeabanexWeb.Resolvers.Training do
  alias Weabanex.Trainings.Create, as: CreateTraining

  def create(%{input: args}, _content), do: CreateTraining.call(args)
end

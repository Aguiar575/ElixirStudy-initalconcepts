defmodule Weabanex.Training do
  use Ecto.Schema
  import Ecto.Changeset

  alias Weabanex.{User, Exercise}

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id

  @field [:start_date, :end_date]

  schema "trainings" do
    field :start_date, :date
    field :end_date, :date

    belongs_to :user, User
    has_many :exercises, Exercise

    timestamps()
  end

  def changeset(params) do
    %__MODULE__{}
    |> cast(params, @field)
    |> unique_constraint([:email])
    |> validate_required(@field)
    |> cast_assoc(:exercises)
  end

end

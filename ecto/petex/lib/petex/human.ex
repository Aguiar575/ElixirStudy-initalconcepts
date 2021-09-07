defmodule Petex.Human do
  use Ecto.Schema
  import Ecto.Changeset

  alias Petex.Pet

  @fields [:age, :cpf, :email, :name]

  schema "humans" do
    field :age, :integer
    field :cpf, :string
    field :email, :string
    field :name, :string

    has_many :pets, Pet

    timestamps()
  end

  def changeset(params) do
    %__MODULE__{}
    |> cast(params, @fields)
    |> validate_required(@fields)
    |> validate_number(:age, greater_than_or_equal_to: 18)
    |> validate_length(:name, min: 2)
  end
end

defmodule Petex.Repo.Migrations.CreateHumans do
  use Ecto.Migration

  def change do
      create table(:humans) do
        add :age, :integer
        add :cpf, :string
        add :email, :string
        add :name, :string

        timestamps()
      end

      create unique_index(:humans, [:email])
      create unique_index(:humans, [:cpf])
  end
end

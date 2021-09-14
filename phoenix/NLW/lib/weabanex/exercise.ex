defmodule Weabanex.Exercise do
  use Ecto.Schema
  import Ecto.Changeset

  alias Weabanex.Training

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id

  @fields [:name, :youtube_video_url, :protocol_description, :repetition]

  schema "exercises" do
    field :name, :string
    field :youtube_video_url, :string
    field :protocol_description, :string
    field :repetition, :string

    belongs_to :training, Training

    timestamps()
  end

  def changeset(exercise, params) do
    exercise
    |> cast(params, @fields)
    |> validate_required(@fields)
    |> validate_length(:youtube_video_url, min: 10)
  end
end

defmodule ApChem.DB.PgheroSpaceStats do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key false
  schema "pghero_space_stats" do
    field :captured_at, :naive_datetime, primary_key: false
    field :database, :string, primary_key: false
    field :id, :integer, primary_key: true
    field :relation, :string, primary_key: false
    field :schema, :string, primary_key: false
    field :size, :integer, primary_key: false

  end
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:captured_at, :database, :id, :relation, :schema, :size])
  end
end

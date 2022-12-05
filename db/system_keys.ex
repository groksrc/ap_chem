defmodule ApChem.DB.SystemKeys do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key false
  schema "system_keys" do
    field :created_at, :naive_datetime, primary_key: false
    field :id, :integer, primary_key: true
    field :key, :charlist, primary_key: false
    field :updated_at, :naive_datetime, primary_key: false

  end
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:created_at, :id, :key, :updated_at])
  end
end

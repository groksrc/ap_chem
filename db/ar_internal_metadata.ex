defmodule ApChem.DB.ArInternalMetadata do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key false
  schema "ar_internal_metadata" do
    field :created_at, :naive_datetime, primary_key: false
    field :key, :string, primary_key: true
    field :updated_at, :naive_datetime, primary_key: false
    field :value, :string, primary_key: false

  end
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:created_at, :key, :updated_at, :value])
  end
end

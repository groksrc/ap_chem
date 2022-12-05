defmodule ApChem.DB.Settings do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key false
  schema "settings" do
    field :created_at, :naive_datetime, primary_key: false
    field :id, :integer, primary_key: true
    field :thing_id, :integer, primary_key: false
    field :thing_type, :string, primary_key: false
    field :updated_at, :naive_datetime, primary_key: false
    field :value, :string, primary_key: false
    field :var, :string, primary_key: false

  end
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:created_at, :id, :thing_id, :thing_type, :updated_at, :value, :var])
  end
end

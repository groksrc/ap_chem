defmodule ApChem.DB.Rules do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key false
  schema "rules" do
    field :created_at, :naive_datetime, primary_key: false
    field :deleted_at, :naive_datetime, primary_key: false
    field :id, :integer, primary_key: true
    field :priority, :integer, primary_key: false
    field :text, :string, primary_key: false
    field :updated_at, :naive_datetime, primary_key: false

  end
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:created_at, :deleted_at, :id, :priority, :text, :updated_at])
  end
end

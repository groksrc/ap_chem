defmodule ApChem.DB.Conversations do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key false
  schema "conversations" do
    field :created_at, :naive_datetime, primary_key: false
    field :id, :integer, primary_key: true
    field :updated_at, :naive_datetime, primary_key: false
    field :uri, :string, primary_key: false

  end
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:created_at, :id, :updated_at, :uri])
  end
end

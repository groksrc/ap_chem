defmodule ApChem.DB.Relays do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key false
  schema "relays" do
    field :created_at, :naive_datetime, primary_key: false
    field :follow_activity_id, :string, primary_key: false
    field :id, :integer, primary_key: true
    field :inbox_url, :string, primary_key: false
    field :state, :integer, primary_key: false
    field :updated_at, :naive_datetime, primary_key: false

  end
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:created_at, :follow_activity_id, :id, :inbox_url, :state, :updated_at])
  end
end

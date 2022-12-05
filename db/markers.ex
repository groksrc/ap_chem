defmodule ApChem.DB.Markers do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key false
  schema "markers" do
    field :created_at, :naive_datetime, primary_key: false
    field :id, :integer, primary_key: true
    field :last_read_id, :integer, primary_key: false
    field :lock_version, :integer, primary_key: false
    field :timeline, :string, primary_key: false
    field :updated_at, :naive_datetime, primary_key: false

    belongs_to :user, ApChem.DB.Users
  end
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:created_at, :id, :last_read_id, :lock_version, :timeline, :updated_at, :user_id])
  end
end

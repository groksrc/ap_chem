defmodule ApChem.DB.WebSettings do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key false
  schema "web_settings" do
    field :created_at, :naive_datetime, primary_key: false
    field :data, :map, primary_key: false
    field :id, :integer, primary_key: true
    field :updated_at, :naive_datetime, primary_key: false

    belongs_to :user, ApChem.DB.Users
  end
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:created_at, :data, :id, :updated_at, :user_id])
  end
end

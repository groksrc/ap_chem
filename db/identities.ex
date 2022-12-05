defmodule ApChem.DB.Identities do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key false
  schema "identities" do
    field :created_at, :naive_datetime, primary_key: false
    field :id, :integer, primary_key: true
    field :provider, :string, primary_key: false
    field :uid, :string, primary_key: false
    field :updated_at, :naive_datetime, primary_key: false

    belongs_to :user, ApChem.DB.Users
  end
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:created_at, :id, :provider, :uid, :updated_at, :user_id])
  end
end

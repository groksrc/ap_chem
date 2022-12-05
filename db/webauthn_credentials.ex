defmodule ApChem.DB.WebauthnCredentials do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key false
  schema "webauthn_credentials" do
    field :created_at, :naive_datetime, primary_key: false
    field :external_id, :string, primary_key: false
    field :id, :integer, primary_key: true
    field :nickname, :string, primary_key: false
    field :public_key, :string, primary_key: false
    field :sign_count, :integer, primary_key: false
    field :updated_at, :naive_datetime, primary_key: false

    belongs_to :user, ApChem.DB.Users
  end
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:created_at, :external_id, :id, :nickname, :public_key, :sign_count, :updated_at, :user_id])
  end
end

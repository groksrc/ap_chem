defmodule ApChem.DB.WebPushSubscriptions do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key false
  schema "web_push_subscriptions" do
    field :created_at, :naive_datetime, primary_key: false
    field :data, :map, primary_key: false
    field :endpoint, :string, primary_key: false
    field :id, :integer, primary_key: true
    field :key_auth, :string, primary_key: false
    field :key_p256dh, :string, primary_key: false
    field :updated_at, :naive_datetime, primary_key: false

    belongs_to :access_token, ApChem.DB.OauthAccessTokens
    belongs_to :user, ApChem.DB.Users
  end
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:access_token_id, :created_at, :data, :endpoint, :id, :key_auth, :key_p256dh, :updated_at, :user_id])
  end
end

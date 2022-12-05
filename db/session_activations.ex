defmodule ApChem.DB.SessionActivations do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key false
  schema "session_activations" do
    field :created_at, :naive_datetime, primary_key: false
    field :id, :integer, primary_key: true
    field :ip, :string, primary_key: false
    field :session_id, :string, primary_key: false
    field :updated_at, :naive_datetime, primary_key: false
    field :user_agent, :string, primary_key: false
    field :web_push_subscription_id, :integer, primary_key: false

    belongs_to :access_token, ApChem.DB.OauthAccessTokens
    belongs_to :user, ApChem.DB.Users
  end
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:access_token_id, :created_at, :id, :ip, :session_id, :updated_at, :user_agent, :user_id, :web_push_subscription_id])
  end
end

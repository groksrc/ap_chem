defmodule ApChem.DB.Devices do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key false
  schema "devices" do
    field :created_at, :naive_datetime, primary_key: false
    field :fingerprint_key, :string, primary_key: false
    field :id, :integer, primary_key: true
    field :identity_key, :string, primary_key: false
    field :name, :string, primary_key: false
    field :updated_at, :naive_datetime, primary_key: false

    belongs_to :access_token, ApChem.DB.OauthAccessTokens
    belongs_to :account, ApChem.DB.Accounts
    belongs_to :device, ApChem.DB.Devices
  end
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:access_token_id, :account_id, :created_at, :device_id, :fingerprint_key, :id, :identity_key, :name, :updated_at])
  end
end

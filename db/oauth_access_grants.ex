defmodule ApChem.DB.OauthAccessGrants do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key false
  schema "oauth_access_grants" do
    field :created_at, :naive_datetime, primary_key: false
    field :expires_in, :integer, primary_key: false
    field :id, :integer, primary_key: true
    field :redirect_uri, :string, primary_key: false
    field :revoked_at, :naive_datetime, primary_key: false
    field :scopes, :string, primary_key: false
    field :token, :string, primary_key: false

    belongs_to :application, ApChem.DB.OauthApplications
    belongs_to :resource_owner, ApChem.DB.Users
  end
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:application_id, :created_at, :expires_in, :id, :redirect_uri, :resource_owner_id, :revoked_at, :scopes, :token])
  end
end

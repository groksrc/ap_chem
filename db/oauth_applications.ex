defmodule ApChem.DB.OauthApplications do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key false
  schema "oauth_applications" do
    field :confidential, :boolean, primary_key: false
    field :created_at, :naive_datetime, primary_key: false
    field :id, :integer, primary_key: true
    field :name, :string, primary_key: false
    field :owner_type, :string, primary_key: false
    field :redirect_uri, :string, primary_key: false
    field :scopes, :string, primary_key: false
    field :secret, :string, primary_key: false
    field :superapp, :boolean, primary_key: false
    field :uid, :string, primary_key: false
    field :updated_at, :naive_datetime, primary_key: false
    field :website, :string, primary_key: false

    belongs_to :owner, ApChem.DB.Users
  end
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:confidential, :created_at, :id, :name, :owner_id, :owner_type, :redirect_uri, :scopes, :secret, :superapp, :uid, :updated_at, :website])
  end
end

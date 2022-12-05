defmodule ApChem.DB.Accounts do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key false
  schema "accounts" do
    field :actor_type, :string, primary_key: false
    field :also_known_as, :string, primary_key: false
    field :avatar_content_type, :string, primary_key: false
    field :avatar_file_name, :string, primary_key: false
    field :avatar_file_size, :integer, primary_key: false
    field :avatar_remote_url, :string, primary_key: false
    field :avatar_storage_schema_version, :integer, primary_key: false
    field :avatar_updated_at, :naive_datetime, primary_key: false
    field :created_at, :naive_datetime, primary_key: false
    field :devices_url, :string, primary_key: false
    field :discoverable, :boolean, primary_key: false
    field :display_name, :string, primary_key: false
    field :domain, :string, primary_key: false
    field :featured_collection_url, :string, primary_key: false
    field :fields, :map, primary_key: false
    field :followers_url, :string, primary_key: false
    field :header_content_type, :string, primary_key: false
    field :header_file_name, :string, primary_key: false
    field :header_file_size, :integer, primary_key: false
    field :header_remote_url, :string, primary_key: false
    field :header_storage_schema_version, :integer, primary_key: false
    field :header_updated_at, :naive_datetime, primary_key: false
    field :hide_collections, :boolean, primary_key: false
    field :id, :integer, primary_key: true
    field :inbox_url, :string, primary_key: false
    field :last_webfingered_at, :naive_datetime, primary_key: false
    field :locked, :boolean, primary_key: false
    field :memorial, :boolean, primary_key: false
    field :note, :string, primary_key: false
    field :outbox_url, :string, primary_key: false
    field :private_key, :string, primary_key: false
    field :protocol, :integer, primary_key: false
    field :public_key, :string, primary_key: false
    field :requested_review_at, :naive_datetime, primary_key: false
    field :reviewed_at, :naive_datetime, primary_key: false
    field :sensitized_at, :naive_datetime, primary_key: false
    field :shared_inbox_url, :string, primary_key: false
    field :silenced_at, :naive_datetime, primary_key: false
    field :suspended_at, :naive_datetime, primary_key: false
    field :suspension_origin, :integer, primary_key: false
    field :trendable, :boolean, primary_key: false
    field :updated_at, :naive_datetime, primary_key: false
    field :uri, :string, primary_key: false
    field :url, :string, primary_key: false
    field :username, :string, primary_key: false

    belongs_to :moved_to_account, ApChem.DB.Accounts
  end
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:actor_type, :also_known_as, :avatar_content_type, :avatar_file_name, :avatar_file_size, :avatar_remote_url, :avatar_storage_schema_version, :avatar_updated_at, :created_at, :devices_url, :discoverable, :display_name, :domain, :featured_collection_url, :fields, :followers_url, :header_content_type, :header_file_name, :header_file_size, :header_remote_url, :header_storage_schema_version, :header_updated_at, :hide_collections, :id, :inbox_url, :last_webfingered_at, :locked, :memorial, :moved_to_account_id, :note, :outbox_url, :private_key, :protocol, :public_key, :requested_review_at, :reviewed_at, :sensitized_at, :shared_inbox_url, :silenced_at, :suspended_at, :suspension_origin, :trendable, :updated_at, :uri, :url, :username])
  end
end

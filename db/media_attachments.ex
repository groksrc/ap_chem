defmodule ApChem.DB.MediaAttachments do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key false
  schema "media_attachments" do
    field :blurhash, :string, primary_key: false
    field :created_at, :naive_datetime, primary_key: false
    field :description, :string, primary_key: false
    field :file_content_type, :string, primary_key: false
    field :file_file_name, :string, primary_key: false
    field :file_file_size, :integer, primary_key: false
    field :file_meta, :map, primary_key: false
    field :file_storage_schema_version, :integer, primary_key: false
    field :file_updated_at, :naive_datetime, primary_key: false
    field :id, :integer, primary_key: true
    field :processing, :integer, primary_key: false
    field :remote_url, :string, primary_key: false
    field :shortcode, :string, primary_key: false
    field :thumbnail_content_type, :string, primary_key: false
    field :thumbnail_file_name, :string, primary_key: false
    field :thumbnail_file_size, :integer, primary_key: false
    field :thumbnail_remote_url, :string, primary_key: false
    field :thumbnail_updated_at, :naive_datetime, primary_key: false
    field :type, :integer, primary_key: false
    field :updated_at, :naive_datetime, primary_key: false

    belongs_to :account, ApChem.DB.Accounts
    belongs_to :scheduled_status, ApChem.DB.ScheduledStatuses
    belongs_to :status, ApChem.DB.Statuses
  end
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:account_id, :blurhash, :created_at, :description, :file_content_type, :file_file_name, :file_file_size, :file_meta, :file_storage_schema_version, :file_updated_at, :id, :processing, :remote_url, :scheduled_status_id, :shortcode, :status_id, :thumbnail_content_type, :thumbnail_file_name, :thumbnail_file_size, :thumbnail_remote_url, :thumbnail_updated_at, :type, :updated_at])
  end
end

defmodule ApChem.DB.CustomEmojis do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key false
  schema "custom_emojis" do
    field :category_id, :integer, primary_key: false
    field :created_at, :naive_datetime, primary_key: false
    field :disabled, :boolean, primary_key: false
    field :domain, :string, primary_key: false
    field :id, :integer, primary_key: true
    field :image_content_type, :string, primary_key: false
    field :image_file_name, :string, primary_key: false
    field :image_file_size, :integer, primary_key: false
    field :image_remote_url, :string, primary_key: false
    field :image_storage_schema_version, :integer, primary_key: false
    field :image_updated_at, :naive_datetime, primary_key: false
    field :shortcode, :string, primary_key: false
    field :updated_at, :naive_datetime, primary_key: false
    field :uri, :string, primary_key: false
    field :visible_in_picker, :boolean, primary_key: false

  end
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:category_id, :created_at, :disabled, :domain, :id, :image_content_type, :image_file_name, :image_file_size, :image_remote_url, :image_storage_schema_version, :image_updated_at, :shortcode, :updated_at, :uri, :visible_in_picker])
  end
end

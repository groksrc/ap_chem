defmodule ApChem.DB.PreviewCards do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key false
  schema "preview_cards" do
    field :author_name, :string, primary_key: false
    field :author_url, :string, primary_key: false
    field :blurhash, :string, primary_key: false
    field :created_at, :naive_datetime, primary_key: false
    field :description, :string, primary_key: false
    field :embed_url, :string, primary_key: false
    field :height, :integer, primary_key: false
    field :html, :string, primary_key: false
    field :id, :integer, primary_key: true
    field :image_content_type, :string, primary_key: false
    field :image_file_name, :string, primary_key: false
    field :image_file_size, :integer, primary_key: false
    field :image_storage_schema_version, :integer, primary_key: false
    field :image_updated_at, :naive_datetime, primary_key: false
    field :language, :string, primary_key: false
    field :link_type, :integer, primary_key: false
    field :max_score, :float, primary_key: false
    field :max_score_at, :naive_datetime, primary_key: false
    field :provider_name, :string, primary_key: false
    field :provider_url, :string, primary_key: false
    field :title, :string, primary_key: false
    field :trendable, :boolean, primary_key: false
    field :type, :integer, primary_key: false
    field :updated_at, :naive_datetime, primary_key: false
    field :url, :string, primary_key: false
    field :width, :integer, primary_key: false

  end
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:author_name, :author_url, :blurhash, :created_at, :description, :embed_url, :height, :html, :id, :image_content_type, :image_file_name, :image_file_size, :image_storage_schema_version, :image_updated_at, :language, :link_type, :max_score, :max_score_at, :provider_name, :provider_url, :title, :trendable, :type, :updated_at, :url, :width])
  end
end

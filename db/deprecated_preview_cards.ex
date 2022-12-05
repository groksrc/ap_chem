defmodule ApChem.DB.DeprecatedPreviewCards do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key false
  schema "deprecated_preview_cards" do
    field :author_name, :string, primary_key: false
    field :author_url, :string, primary_key: false
    field :created_at, :naive_datetime, primary_key: false
    field :description, :string, primary_key: false
    field :height, :integer, primary_key: false
    field :html, :string, primary_key: false
    field :id, :integer, primary_key: true
    field :image_content_type, :string, primary_key: false
    field :image_file_name, :string, primary_key: false
    field :image_file_size, :integer, primary_key: false
    field :image_updated_at, :naive_datetime, primary_key: false
    field :provider_name, :string, primary_key: false
    field :provider_url, :string, primary_key: false
    field :title, :string, primary_key: false
    field :type, :integer, primary_key: false
    field :updated_at, :naive_datetime, primary_key: false
    field :url, :string, primary_key: false
    field :width, :integer, primary_key: false

    belongs_to :status, ApChem.DB.Statuses
  end
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:author_name, :author_url, :created_at, :description, :height, :html, :id, :image_content_type, :image_file_name, :image_file_size, :image_updated_at, :provider_name, :provider_url, :status_id, :title, :type, :updated_at, :url, :width])
  end
end

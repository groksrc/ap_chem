defmodule ApChem.DB.SiteUploads do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key false
  schema "site_uploads" do
    field :blurhash, :string, primary_key: false
    field :created_at, :naive_datetime, primary_key: false
    field :file_content_type, :string, primary_key: false
    field :file_file_name, :string, primary_key: false
    field :file_file_size, :integer, primary_key: false
    field :file_updated_at, :naive_datetime, primary_key: false
    field :id, :integer, primary_key: true
    field :meta, :map, primary_key: false
    field :updated_at, :naive_datetime, primary_key: false
    field :var, :string, primary_key: false

  end
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:blurhash, :created_at, :file_content_type, :file_file_name, :file_file_size, :file_updated_at, :id, :meta, :updated_at, :var])
  end
end

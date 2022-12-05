defmodule ApChem.DB.PreviewCardProviders do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key false
  schema "preview_card_providers" do
    field :created_at, :naive_datetime, primary_key: false
    field :domain, :string, primary_key: false
    field :icon_content_type, :string, primary_key: false
    field :icon_file_name, :string, primary_key: false
    field :icon_file_size, :integer, primary_key: false
    field :icon_updated_at, :naive_datetime, primary_key: false
    field :id, :integer, primary_key: true
    field :requested_review_at, :naive_datetime, primary_key: false
    field :reviewed_at, :naive_datetime, primary_key: false
    field :trendable, :boolean, primary_key: false
    field :updated_at, :naive_datetime, primary_key: false

  end
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:created_at, :domain, :icon_content_type, :icon_file_name, :icon_file_size, :icon_updated_at, :id, :requested_review_at, :reviewed_at, :trendable, :updated_at])
  end
end

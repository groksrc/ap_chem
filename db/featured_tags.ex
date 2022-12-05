defmodule ApChem.DB.FeaturedTags do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key false
  schema "featured_tags" do
    field :created_at, :naive_datetime, primary_key: false
    field :id, :integer, primary_key: true
    field :last_status_at, :naive_datetime, primary_key: false
    field :name, :string, primary_key: false
    field :statuses_count, :integer, primary_key: false
    field :updated_at, :naive_datetime, primary_key: false

    belongs_to :account, ApChem.DB.Accounts
    belongs_to :tag, ApChem.DB.Tags
  end
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:account_id, :created_at, :id, :last_status_at, :name, :statuses_count, :tag_id, :updated_at])
  end
end

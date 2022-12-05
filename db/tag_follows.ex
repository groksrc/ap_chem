defmodule ApChem.DB.TagFollows do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key false
  schema "tag_follows" do
    field :created_at, :naive_datetime, primary_key: false
    field :id, :integer, primary_key: true
    field :updated_at, :naive_datetime, primary_key: false

    belongs_to :account, ApChem.DB.Accounts
    belongs_to :tag, ApChem.DB.Tags
  end
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:account_id, :created_at, :id, :tag_id, :updated_at])
  end
end

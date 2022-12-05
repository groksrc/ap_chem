defmodule ApChem.DB.Tombstones do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key false
  schema "tombstones" do
    field :by_moderator, :boolean, primary_key: false
    field :created_at, :naive_datetime, primary_key: false
    field :id, :integer, primary_key: true
    field :updated_at, :naive_datetime, primary_key: false
    field :uri, :string, primary_key: false

    belongs_to :account, ApChem.DB.Accounts
  end
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:account_id, :by_moderator, :created_at, :id, :updated_at, :uri])
  end
end

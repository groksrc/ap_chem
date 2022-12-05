defmodule ApChem.DB.Lists do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key false
  schema "lists" do
    field :created_at, :naive_datetime, primary_key: false
    field :id, :integer, primary_key: true
    field :replies_policy, :integer, primary_key: false
    field :title, :string, primary_key: false
    field :updated_at, :naive_datetime, primary_key: false

    belongs_to :account, ApChem.DB.Accounts
  end
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:account_id, :created_at, :id, :replies_policy, :title, :updated_at])
  end
end

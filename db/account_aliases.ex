defmodule ApChem.DB.AccountAliases do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key false
  schema "account_aliases" do
    field :acct, :string, primary_key: false
    field :created_at, :naive_datetime, primary_key: false
    field :id, :integer, primary_key: true
    field :updated_at, :naive_datetime, primary_key: false
    field :uri, :string, primary_key: false

    belongs_to :account, ApChem.DB.Accounts
  end
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:account_id, :acct, :created_at, :id, :updated_at, :uri])
  end
end

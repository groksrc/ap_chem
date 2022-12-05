defmodule ApChem.DB.ListAccounts do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key false
  schema "list_accounts" do
    field :id, :integer, primary_key: true

    belongs_to :account, ApChem.DB.Accounts
    belongs_to :follow, ApChem.DB.Follows
    belongs_to :list, ApChem.DB.Lists
  end
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:account_id, :follow_id, :id, :list_id])
  end
end

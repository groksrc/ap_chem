defmodule ApChem.DB.AccountsTags do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key false
  schema "accounts_tags" do

    belongs_to :account, ApChem.DB.Accounts
    belongs_to :tag, ApChem.DB.Tags
  end
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:account_id, :tag_id])
  end
end

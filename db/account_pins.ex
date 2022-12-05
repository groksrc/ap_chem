defmodule ApChem.DB.AccountPins do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key false
  schema "account_pins" do
    field :created_at, :naive_datetime, primary_key: false
    field :id, :integer, primary_key: true
    field :updated_at, :naive_datetime, primary_key: false

    belongs_to :account, ApChem.DB.Accounts
    belongs_to :target_account, ApChem.DB.Accounts
  end
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:account_id, :created_at, :id, :target_account_id, :updated_at])
  end
end

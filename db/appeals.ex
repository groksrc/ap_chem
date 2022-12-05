defmodule ApChem.DB.Appeals do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key false
  schema "appeals" do
    field :approved_at, :naive_datetime, primary_key: false
    field :created_at, :naive_datetime, primary_key: false
    field :id, :integer, primary_key: true
    field :rejected_at, :naive_datetime, primary_key: false
    field :text, :string, primary_key: false
    field :updated_at, :naive_datetime, primary_key: false

    belongs_to :account, ApChem.DB.Accounts
    belongs_to :account_warning, ApChem.DB.AccountWarnings
    belongs_to :approved_by_account, ApChem.DB.Accounts
    belongs_to :rejected_by_account, ApChem.DB.Accounts
  end
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:account_id, :account_warning_id, :approved_at, :approved_by_account_id, :created_at, :id, :rejected_at, :rejected_by_account_id, :text, :updated_at])
  end
end

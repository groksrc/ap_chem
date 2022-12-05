defmodule ApChem.DB.AccountWarnings do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key false
  schema "account_warnings" do
    field :action, :integer, primary_key: false
    field :created_at, :naive_datetime, primary_key: false
    field :id, :integer, primary_key: true
    field :overruled_at, :naive_datetime, primary_key: false
    field :status_ids, :string, primary_key: false
    field :text, :string, primary_key: false
    field :updated_at, :naive_datetime, primary_key: false

    belongs_to :account, ApChem.DB.Accounts
    belongs_to :report, ApChem.DB.Reports
    belongs_to :target_account, ApChem.DB.Accounts
  end
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:account_id, :action, :created_at, :id, :overruled_at, :report_id, :status_ids, :target_account_id, :text, :updated_at])
  end
end

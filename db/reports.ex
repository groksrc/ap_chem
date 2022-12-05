defmodule ApChem.DB.Reports do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key false
  schema "reports" do
    field :action_taken_at, :naive_datetime, primary_key: false
    field :category, :integer, primary_key: false
    field :comment, :string, primary_key: false
    field :created_at, :naive_datetime, primary_key: false
    field :forwarded, :boolean, primary_key: false
    field :id, :integer, primary_key: true
    field :rule_ids, :integer, primary_key: false
    field :status_ids, :integer, primary_key: false
    field :updated_at, :naive_datetime, primary_key: false
    field :uri, :string, primary_key: false

    belongs_to :account, ApChem.DB.Accounts
    belongs_to :action_taken_by_account, ApChem.DB.Accounts
    belongs_to :assigned_account, ApChem.DB.Accounts
    belongs_to :target_account, ApChem.DB.Accounts
  end
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:account_id, :action_taken_at, :action_taken_by_account_id, :assigned_account_id, :category, :comment, :created_at, :forwarded, :id, :rule_ids, :status_ids, :target_account_id, :updated_at, :uri])
  end
end

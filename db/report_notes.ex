defmodule ApChem.DB.ReportNotes do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key false
  schema "report_notes" do
    field :content, :string, primary_key: false
    field :created_at, :naive_datetime, primary_key: false
    field :id, :integer, primary_key: true
    field :updated_at, :naive_datetime, primary_key: false

    belongs_to :account, ApChem.DB.Accounts
    belongs_to :report, ApChem.DB.Reports
  end
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:account_id, :content, :created_at, :id, :report_id, :updated_at])
  end
end

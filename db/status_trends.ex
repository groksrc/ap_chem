defmodule ApChem.DB.StatusTrends do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key false
  schema "status_trends" do
    field :allowed, :boolean, primary_key: false
    field :id, :integer, primary_key: true
    field :language, :string, primary_key: false
    field :rank, :integer, primary_key: false
    field :score, :float, primary_key: false

    belongs_to :account, ApChem.DB.Accounts
    belongs_to :status, ApChem.DB.Statuses
  end
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:account_id, :allowed, :id, :language, :rank, :score, :status_id])
  end
end

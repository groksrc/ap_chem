defmodule ApChem.DB.ScheduledStatuses do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key false
  schema "scheduled_statuses" do
    field :id, :integer, primary_key: true
    field :params, :map, primary_key: false
    field :scheduled_at, :naive_datetime, primary_key: false

    belongs_to :account, ApChem.DB.Accounts
  end
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:account_id, :id, :params, :scheduled_at])
  end
end

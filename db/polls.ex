defmodule ApChem.DB.Polls do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key false
  schema "polls" do
    field :cached_tallies, :integer, primary_key: false
    field :created_at, :naive_datetime, primary_key: false
    field :expires_at, :naive_datetime, primary_key: false
    field :hide_totals, :boolean, primary_key: false
    field :id, :integer, primary_key: true
    field :last_fetched_at, :naive_datetime, primary_key: false
    field :lock_version, :integer, primary_key: false
    field :multiple, :boolean, primary_key: false
    field :options, :string, primary_key: false
    field :updated_at, :naive_datetime, primary_key: false
    field :voters_count, :integer, primary_key: false
    field :votes_count, :integer, primary_key: false

    belongs_to :account, ApChem.DB.Accounts
    belongs_to :status, ApChem.DB.Statuses
  end
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:account_id, :cached_tallies, :created_at, :expires_at, :hide_totals, :id, :last_fetched_at, :lock_version, :multiple, :options, :status_id, :updated_at, :voters_count, :votes_count])
  end
end

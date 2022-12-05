defmodule ApChem.DB.AccountStats do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key false
  schema "account_stats" do
    field :created_at, :naive_datetime, primary_key: false
    field :followers_count, :integer, primary_key: false
    field :following_count, :integer, primary_key: false
    field :id, :integer, primary_key: true
    field :last_status_at, :naive_datetime, primary_key: false
    field :statuses_count, :integer, primary_key: false
    field :updated_at, :naive_datetime, primary_key: false

    belongs_to :account, ApChem.DB.Accounts
  end
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:account_id, :created_at, :followers_count, :following_count, :id, :last_status_at, :statuses_count, :updated_at])
  end
end

defmodule ApChem.DB.Mentions do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key false
  schema "mentions" do
    field :created_at, :naive_datetime, primary_key: false
    field :id, :integer, primary_key: true
    field :silent, :boolean, primary_key: false
    field :updated_at, :naive_datetime, primary_key: false

    belongs_to :account, ApChem.DB.Accounts
    belongs_to :status, ApChem.DB.Statuses
  end
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:account_id, :created_at, :id, :silent, :status_id, :updated_at])
  end
end

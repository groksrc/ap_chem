defmodule ApChem.DB.Mutes do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key false
  schema "mutes" do
    field :created_at, :naive_datetime, primary_key: false
    field :expires_at, :naive_datetime, primary_key: false
    field :hide_notifications, :boolean, primary_key: false
    field :id, :integer, primary_key: true
    field :updated_at, :naive_datetime, primary_key: false

    belongs_to :account, ApChem.DB.Accounts
    belongs_to :target_account, ApChem.DB.Accounts
  end
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:account_id, :created_at, :expires_at, :hide_notifications, :id, :target_account_id, :updated_at])
  end
end

defmodule ApChem.DB.Notifications do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key false
  schema "notifications" do
    field :activity_id, :integer, primary_key: false
    field :activity_type, :string, primary_key: false
    field :created_at, :naive_datetime, primary_key: false
    field :id, :integer, primary_key: true
    field :type, :string, primary_key: false
    field :updated_at, :naive_datetime, primary_key: false

    belongs_to :account, ApChem.DB.Accounts
    belongs_to :from_account, ApChem.DB.Accounts
  end
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:account_id, :activity_id, :activity_type, :created_at, :from_account_id, :id, :type, :updated_at])
  end
end

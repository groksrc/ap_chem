defmodule ApChem.DB.AdminActionLogs do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key false
  schema "admin_action_logs" do
    field :action, :string, primary_key: false
    field :created_at, :naive_datetime, primary_key: false
    field :human_identifier, :string, primary_key: false
    field :id, :integer, primary_key: true
    field :permalink, :string, primary_key: false
    field :route_param, :string, primary_key: false
    field :target_id, :integer, primary_key: false
    field :target_type, :string, primary_key: false
    field :updated_at, :naive_datetime, primary_key: false

    belongs_to :account, ApChem.DB.Accounts
  end
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:account_id, :action, :created_at, :human_identifier, :id, :permalink, :route_param, :target_id, :target_type, :updated_at])
  end
end

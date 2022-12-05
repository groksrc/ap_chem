defmodule ApChem.DB.CustomFilters do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key false
  schema "custom_filters" do
    field :action, :integer, primary_key: false
    field :context, :string, primary_key: false
    field :created_at, :naive_datetime, primary_key: false
    field :expires_at, :naive_datetime, primary_key: false
    field :id, :integer, primary_key: true
    field :phrase, :string, primary_key: false
    field :updated_at, :naive_datetime, primary_key: false

    belongs_to :account, ApChem.DB.Accounts
  end
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:account_id, :action, :context, :created_at, :expires_at, :id, :phrase, :updated_at])
  end
end

defmodule ApChem.DB.AccountWarningPresets do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key false
  schema "account_warning_presets" do
    field :created_at, :naive_datetime, primary_key: false
    field :id, :integer, primary_key: true
    field :text, :string, primary_key: false
    field :title, :string, primary_key: false
    field :updated_at, :naive_datetime, primary_key: false

  end
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:created_at, :id, :text, :title, :updated_at])
  end
end

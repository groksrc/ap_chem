defmodule ApChem.DB.CustomFilterStatuses do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key false
  schema "custom_filter_statuses" do
    field :created_at, :naive_datetime, primary_key: false
    field :id, :integer, primary_key: true
    field :updated_at, :naive_datetime, primary_key: false

    belongs_to :custom_filter, ApChem.DB.CustomFilters
    belongs_to :status, ApChem.DB.Statuses
  end
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:created_at, :custom_filter_id, :id, :status_id, :updated_at])
  end
end

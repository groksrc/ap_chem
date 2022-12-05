defmodule ApChem.DB.StatusStats do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key false
  schema "status_stats" do
    field :created_at, :naive_datetime, primary_key: false
    field :favourites_count, :integer, primary_key: false
    field :id, :integer, primary_key: true
    field :reblogs_count, :integer, primary_key: false
    field :replies_count, :integer, primary_key: false
    field :updated_at, :naive_datetime, primary_key: false

    belongs_to :status, ApChem.DB.Statuses
  end
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:created_at, :favourites_count, :id, :reblogs_count, :replies_count, :status_id, :updated_at])
  end
end

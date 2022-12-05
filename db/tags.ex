defmodule ApChem.DB.Tags do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key false
  schema "tags" do
    field :created_at, :naive_datetime, primary_key: false
    field :display_name, :string, primary_key: false
    field :id, :integer, primary_key: true
    field :last_status_at, :naive_datetime, primary_key: false
    field :listable, :boolean, primary_key: false
    field :max_score, :float, primary_key: false
    field :max_score_at, :naive_datetime, primary_key: false
    field :name, :string, primary_key: false
    field :requested_review_at, :naive_datetime, primary_key: false
    field :reviewed_at, :naive_datetime, primary_key: false
    field :trendable, :boolean, primary_key: false
    field :updated_at, :naive_datetime, primary_key: false
    field :usable, :boolean, primary_key: false

  end
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:created_at, :display_name, :id, :last_status_at, :listable, :max_score, :max_score_at, :name, :requested_review_at, :reviewed_at, :trendable, :updated_at, :usable])
  end
end

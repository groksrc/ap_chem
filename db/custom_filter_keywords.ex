defmodule ApChem.DB.CustomFilterKeywords do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key false
  schema "custom_filter_keywords" do
    field :created_at, :naive_datetime, primary_key: false
    field :id, :integer, primary_key: true
    field :keyword, :string, primary_key: false
    field :updated_at, :naive_datetime, primary_key: false
    field :whole_word, :boolean, primary_key: false

    belongs_to :custom_filter, ApChem.DB.CustomFilters
  end
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:created_at, :custom_filter_id, :id, :keyword, :updated_at, :whole_word])
  end
end

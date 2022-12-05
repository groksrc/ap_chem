defmodule ApChem.DB.CustomEmojiCategories do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key false
  schema "custom_emoji_categories" do
    field :created_at, :naive_datetime, primary_key: false
    field :id, :integer, primary_key: true
    field :name, :string, primary_key: false
    field :updated_at, :naive_datetime, primary_key: false

  end
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:created_at, :id, :name, :updated_at])
  end
end

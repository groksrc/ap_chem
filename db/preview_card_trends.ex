defmodule ApChem.DB.PreviewCardTrends do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key false
  schema "preview_card_trends" do
    field :allowed, :boolean, primary_key: false
    field :id, :integer, primary_key: true
    field :language, :string, primary_key: false
    field :rank, :integer, primary_key: false
    field :score, :float, primary_key: false

    belongs_to :preview_card, ApChem.DB.PreviewCards
  end
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:allowed, :id, :language, :preview_card_id, :rank, :score])
  end
end

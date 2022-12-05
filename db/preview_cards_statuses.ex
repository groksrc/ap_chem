defmodule ApChem.DB.PreviewCardsStatuses do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key false
  schema "preview_cards_statuses" do

    belongs_to :preview_card, ApChem.DB.PreviewCards
    belongs_to :status, ApChem.DB.Statuses
  end
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:preview_card_id, :status_id])
  end
end

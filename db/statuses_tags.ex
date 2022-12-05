defmodule ApChem.DB.StatusesTags do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key false
  schema "statuses_tags" do

    belongs_to :status, ApChem.DB.Statuses
    belongs_to :tag, ApChem.DB.Tags
  end
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:status_id, :tag_id])
  end
end

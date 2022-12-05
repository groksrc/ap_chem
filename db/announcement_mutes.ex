defmodule ApChem.DB.AnnouncementMutes do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key false
  schema "announcement_mutes" do
    field :created_at, :naive_datetime, primary_key: false
    field :id, :integer, primary_key: true
    field :updated_at, :naive_datetime, primary_key: false

    belongs_to :account, ApChem.DB.Accounts
    belongs_to :announcement, ApChem.DB.Announcements
  end
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:account_id, :announcement_id, :created_at, :id, :updated_at])
  end
end

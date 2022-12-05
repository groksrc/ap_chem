defmodule ApChem.DB.AnnouncementReactions do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key false
  schema "announcement_reactions" do
    field :created_at, :naive_datetime, primary_key: false
    field :id, :integer, primary_key: true
    field :name, :string, primary_key: false
    field :updated_at, :naive_datetime, primary_key: false

    belongs_to :account, ApChem.DB.Accounts
    belongs_to :announcement, ApChem.DB.Announcements
    belongs_to :custom_emoji, ApChem.DB.CustomEmojis
  end
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:account_id, :announcement_id, :created_at, :custom_emoji_id, :id, :name, :updated_at])
  end
end

defmodule ApChem.DB.ConversationMutes do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key false
  schema "conversation_mutes" do
    field :id, :integer, primary_key: true

    belongs_to :account, ApChem.DB.Accounts
    belongs_to :conversation, ApChem.DB.Conversations
  end
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:account_id, :conversation_id, :id])
  end
end

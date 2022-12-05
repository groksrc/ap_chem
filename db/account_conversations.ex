defmodule ApChem.DB.AccountConversations do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key false
  schema "account_conversations" do
    field :id, :integer, primary_key: true
    field :last_status_id, :integer, primary_key: false
    field :lock_version, :integer, primary_key: false
    field :participant_account_ids, :integer, primary_key: false
    field :status_ids, :integer, primary_key: false
    field :unread, :boolean, primary_key: false

    belongs_to :account, ApChem.DB.Accounts
    belongs_to :conversation, ApChem.DB.Conversations
  end
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:account_id, :conversation_id, :id, :last_status_id, :lock_version, :participant_account_ids, :status_ids, :unread])
  end
end

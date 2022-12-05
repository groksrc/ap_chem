defmodule ApChem.DB.Statuses do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key false
  schema "statuses" do
    field :created_at, :naive_datetime, primary_key: false
    field :deleted_at, :naive_datetime, primary_key: false
    field :edited_at, :naive_datetime, primary_key: false
    field :id, :integer, primary_key: false
    field :id, :integer, primary_key: true
    field :language, :string, primary_key: false
    field :local, :boolean, primary_key: false
    field :ordered_media_attachment_ids, :integer, primary_key: false
    field :reply, :boolean, primary_key: false
    field :sensitive, :boolean, primary_key: false
    field :spoiler_text, :string, primary_key: false
    field :text, :string, primary_key: false
    field :trendable, :boolean, primary_key: false
    field :updated_at, :naive_datetime, primary_key: false
    field :uri, :string, primary_key: false
    field :url, :string, primary_key: false
    field :visibility, :integer, primary_key: false

    belongs_to :account, ApChem.DB.Accounts
    belongs_to :application, ApChem.DB.OauthApplications
    belongs_to :conversation, ApChem.DB.Conversations
    belongs_to :in_reply_to_account, ApChem.DB.Accounts
    belongs_to :in_reply_to, ApChem.DB.Statuses
    belongs_to :poll, ApChem.DB.Polls
    belongs_to :reblog_of, ApChem.DB.Statuses
  end
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:account_id, :application_id, :conversation_id, :created_at, :deleted_at, :edited_at, :id, :id, :in_reply_to_account_id, :in_reply_to_id, :language, :local, :ordered_media_attachment_ids, :poll_id, :reblog_of_id, :reply, :sensitive, :spoiler_text, :text, :trendable, :updated_at, :uri, :url, :visibility])
  end
end

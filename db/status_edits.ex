defmodule ApChem.DB.StatusEdits do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key false
  schema "status_edits" do
    field :created_at, :naive_datetime, primary_key: false
    field :id, :integer, primary_key: true
    field :media_descriptions, :string, primary_key: false
    field :ordered_media_attachment_ids, :integer, primary_key: false
    field :poll_options, :string, primary_key: false
    field :sensitive, :boolean, primary_key: false
    field :spoiler_text, :string, primary_key: false
    field :text, :string, primary_key: false
    field :updated_at, :naive_datetime, primary_key: false

    belongs_to :account, ApChem.DB.Accounts
    belongs_to :status, ApChem.DB.Statuses
  end
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:account_id, :created_at, :id, :media_descriptions, :ordered_media_attachment_ids, :poll_options, :sensitive, :spoiler_text, :status_id, :text, :updated_at])
  end
end

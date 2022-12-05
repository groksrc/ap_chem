defmodule ApChem.DB.PollVotes do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key false
  schema "poll_votes" do
    field :choice, :integer, primary_key: false
    field :created_at, :naive_datetime, primary_key: false
    field :id, :integer, primary_key: true
    field :updated_at, :naive_datetime, primary_key: false
    field :uri, :string, primary_key: false

    belongs_to :account, ApChem.DB.Accounts
    belongs_to :poll, ApChem.DB.Polls
  end
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:account_id, :choice, :created_at, :id, :poll_id, :updated_at, :uri])
  end
end

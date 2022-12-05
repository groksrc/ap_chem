defmodule ApChem.DB.CanonicalEmailBlocks do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key false
  schema "canonical_email_blocks" do
    field :canonical_email_hash, :string, primary_key: false
    field :created_at, :naive_datetime, primary_key: false
    field :id, :integer, primary_key: true
    field :updated_at, :naive_datetime, primary_key: false

    belongs_to :reference_account, ApChem.DB.Accounts
  end
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:canonical_email_hash, :created_at, :id, :reference_account_id, :updated_at])
  end
end

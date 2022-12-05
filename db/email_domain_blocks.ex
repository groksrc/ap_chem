defmodule ApChem.DB.EmailDomainBlocks do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key false
  schema "email_domain_blocks" do
    field :created_at, :naive_datetime, primary_key: false
    field :domain, :string, primary_key: false
    field :id, :integer, primary_key: true
    field :updated_at, :naive_datetime, primary_key: false

    belongs_to :parent, ApChem.DB.EmailDomainBlocks
  end
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:created_at, :domain, :id, :parent_id, :updated_at])
  end
end

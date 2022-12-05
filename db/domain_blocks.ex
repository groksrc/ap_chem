defmodule ApChem.DB.DomainBlocks do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key false
  schema "domain_blocks" do
    field :created_at, :naive_datetime, primary_key: false
    field :domain, :string, primary_key: false
    field :id, :integer, primary_key: true
    field :obfuscate, :boolean, primary_key: false
    field :private_comment, :string, primary_key: false
    field :public_comment, :string, primary_key: false
    field :reject_media, :boolean, primary_key: false
    field :reject_reports, :boolean, primary_key: false
    field :severity, :integer, primary_key: false
    field :updated_at, :naive_datetime, primary_key: false

  end
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:created_at, :domain, :id, :obfuscate, :private_comment, :public_comment, :reject_media, :reject_reports, :severity, :updated_at])
  end
end

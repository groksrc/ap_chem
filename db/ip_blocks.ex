defmodule ApChem.DB.IpBlocks do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key false
  schema "ip_blocks" do
    field :comment, :string, primary_key: false
    field :created_at, :naive_datetime, primary_key: false
    field :expires_at, :naive_datetime, primary_key: false
    field :id, :integer, primary_key: true
    field :ip, :string, primary_key: false
    field :severity, :integer, primary_key: false
    field :updated_at, :naive_datetime, primary_key: false

  end
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:comment, :created_at, :expires_at, :id, :ip, :severity, :updated_at])
  end
end

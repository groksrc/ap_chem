defmodule ApChem.DB.DomainAllows do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key false
  schema "domain_allows" do
    field :created_at, :naive_datetime, primary_key: false
    field :domain, :string, primary_key: false
    field :id, :integer, primary_key: true
    field :updated_at, :naive_datetime, primary_key: false

  end
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:created_at, :domain, :id, :updated_at])
  end
end

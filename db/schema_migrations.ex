defmodule ApChem.DB.SchemaMigrations do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key false
  schema "schema_migrations" do
    field :version, :string, primary_key: true

  end
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:version])
  end
end

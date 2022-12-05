defmodule ApChem.DB.UserRoles do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key false
  schema "user_roles" do
    field :color, :string, primary_key: false
    field :created_at, :naive_datetime, primary_key: false
    field :highlighted, :boolean, primary_key: false
    field :id, :integer, primary_key: true
    field :name, :string, primary_key: false
    field :permissions, :integer, primary_key: false
    field :position, :integer, primary_key: false
    field :updated_at, :naive_datetime, primary_key: false

  end
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:color, :created_at, :highlighted, :id, :name, :permissions, :position, :updated_at])
  end
end

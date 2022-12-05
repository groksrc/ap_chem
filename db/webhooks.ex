defmodule ApChem.DB.Webhooks do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key false
  schema "webhooks" do
    field :created_at, :naive_datetime, primary_key: false
    field :enabled, :boolean, primary_key: false
    field :events, :string, primary_key: false
    field :id, :integer, primary_key: true
    field :secret, :string, primary_key: false
    field :updated_at, :naive_datetime, primary_key: false
    field :url, :string, primary_key: false

  end
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:created_at, :enabled, :events, :id, :secret, :updated_at, :url])
  end
end

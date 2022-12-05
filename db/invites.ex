defmodule ApChem.DB.Invites do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key false
  schema "invites" do
    field :autofollow, :boolean, primary_key: false
    field :code, :string, primary_key: false
    field :comment, :string, primary_key: false
    field :created_at, :naive_datetime, primary_key: false
    field :expires_at, :naive_datetime, primary_key: false
    field :id, :integer, primary_key: true
    field :max_uses, :integer, primary_key: false
    field :updated_at, :naive_datetime, primary_key: false
    field :uses, :integer, primary_key: false

    belongs_to :user, ApChem.DB.Users
  end
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:autofollow, :code, :comment, :created_at, :expires_at, :id, :max_uses, :updated_at, :user_id, :uses])
  end
end

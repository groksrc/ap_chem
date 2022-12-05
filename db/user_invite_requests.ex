defmodule ApChem.DB.UserInviteRequests do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key false
  schema "user_invite_requests" do
    field :created_at, :naive_datetime, primary_key: false
    field :id, :integer, primary_key: true
    field :text, :string, primary_key: false
    field :updated_at, :naive_datetime, primary_key: false

    belongs_to :user, ApChem.DB.Users
  end
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:created_at, :id, :text, :updated_at, :user_id])
  end
end

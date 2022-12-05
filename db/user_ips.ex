defmodule ApChem.DB.UserIps do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key false
  schema "user_ips" do
    field :ip, :string, primary_key: false
    field :used_at, :naive_datetime, primary_key: false

    belongs_to :user, ApChem.DB.Users
  end
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:ip, :used_at, :user_id])
  end
end

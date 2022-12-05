defmodule ApChem.DB.LoginActivities do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key false
  schema "login_activities" do
    field :authentication_method, :string, primary_key: false
    field :created_at, :naive_datetime, primary_key: false
    field :failure_reason, :string, primary_key: false
    field :id, :integer, primary_key: true
    field :ip, :string, primary_key: false
    field :provider, :string, primary_key: false
    field :success, :boolean, primary_key: false
    field :user_agent, :string, primary_key: false

    belongs_to :user, ApChem.DB.Users
  end
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:authentication_method, :created_at, :failure_reason, :id, :ip, :provider, :success, :user_agent, :user_id])
  end
end

defmodule ApChem.DB.Announcements do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key false
  schema "announcements" do
    field :all_day, :boolean, primary_key: false
    field :created_at, :naive_datetime, primary_key: false
    field :ends_at, :naive_datetime, primary_key: false
    field :id, :integer, primary_key: true
    field :published, :boolean, primary_key: false
    field :published_at, :naive_datetime, primary_key: false
    field :scheduled_at, :naive_datetime, primary_key: false
    field :starts_at, :naive_datetime, primary_key: false
    field :status_ids, :integer, primary_key: false
    field :text, :string, primary_key: false
    field :updated_at, :naive_datetime, primary_key: false

  end
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:all_day, :created_at, :ends_at, :id, :published, :published_at, :scheduled_at, :starts_at, :status_ids, :text, :updated_at])
  end
end

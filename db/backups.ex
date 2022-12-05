defmodule ApChem.DB.Backups do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key false
  schema "backups" do
    field :created_at, :naive_datetime, primary_key: false
    field :dump_content_type, :string, primary_key: false
    field :dump_file_name, :string, primary_key: false
    field :dump_file_size, :integer, primary_key: false
    field :dump_updated_at, :naive_datetime, primary_key: false
    field :id, :integer, primary_key: true
    field :processed, :boolean, primary_key: false
    field :updated_at, :naive_datetime, primary_key: false

    belongs_to :user, ApChem.DB.Users
  end
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:created_at, :dump_content_type, :dump_file_name, :dump_file_size, :dump_updated_at, :id, :processed, :updated_at, :user_id])
  end
end

defmodule ApChem.DB.Imports do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key false
  schema "imports" do
    field :approved, :boolean, primary_key: false
    field :created_at, :naive_datetime, primary_key: false
    field :data_content_type, :string, primary_key: false
    field :data_file_name, :string, primary_key: false
    field :data_file_size, :integer, primary_key: false
    field :data_updated_at, :naive_datetime, primary_key: false
    field :id, :integer, primary_key: true
    field :overwrite, :boolean, primary_key: false
    field :type, :integer, primary_key: false
    field :updated_at, :naive_datetime, primary_key: false

    belongs_to :account, ApChem.DB.Accounts
  end
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:account_id, :approved, :created_at, :data_content_type, :data_file_name, :data_file_size, :data_updated_at, :id, :overwrite, :type, :updated_at])
  end
end

defmodule ApChem.DB.OneTimeKeys do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key false
  schema "one_time_keys" do
    field :created_at, :naive_datetime, primary_key: false
    field :id, :integer, primary_key: true
    field :key, :string, primary_key: false
    field :key_id, :string, primary_key: false
    field :signature, :string, primary_key: false
    field :updated_at, :naive_datetime, primary_key: false

    belongs_to :device, ApChem.DB.Devices
  end
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:created_at, :device_id, :id, :key, :key_id, :signature, :updated_at])
  end
end

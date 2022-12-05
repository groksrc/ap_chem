defmodule ApChem.DB.EncryptedMessages do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key false
  schema "encrypted_messages" do
    field :body, :string, primary_key: false
    field :created_at, :naive_datetime, primary_key: false
    field :digest, :string, primary_key: false
    field :from_device_id, :string, primary_key: false
    field :id, :integer, primary_key: true
    field :message_franking, :string, primary_key: false
    field :type, :integer, primary_key: false
    field :updated_at, :naive_datetime, primary_key: false

    belongs_to :device, ApChem.DB.Devices
    belongs_to :from_account, ApChem.DB.Accounts
  end
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:body, :created_at, :device_id, :digest, :from_account_id, :from_device_id, :id, :message_franking, :type, :updated_at])
  end
end

defmodule ApChem.DB.AccountStatusesCleanupPolicies do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key false
  schema "account_statuses_cleanup_policies" do
    field :created_at, :naive_datetime, primary_key: false
    field :enabled, :boolean, primary_key: false
    field :id, :integer, primary_key: true
    field :keep_direct, :boolean, primary_key: false
    field :keep_media, :boolean, primary_key: false
    field :keep_pinned, :boolean, primary_key: false
    field :keep_polls, :boolean, primary_key: false
    field :keep_self_bookmark, :boolean, primary_key: false
    field :keep_self_fav, :boolean, primary_key: false
    field :min_favs, :integer, primary_key: false
    field :min_reblogs, :integer, primary_key: false
    field :min_status_age, :integer, primary_key: false
    field :updated_at, :naive_datetime, primary_key: false

    belongs_to :account, ApChem.DB.Accounts
  end
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:account_id, :created_at, :enabled, :id, :keep_direct, :keep_media, :keep_pinned, :keep_polls, :keep_self_bookmark, :keep_self_fav, :min_favs, :min_reblogs, :min_status_age, :updated_at])
  end
end

defmodule ApChem.DB.Users do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key false
  schema "users" do
    field :admin, :boolean, primary_key: false
    field :approved, :boolean, primary_key: false
    field :chosen_languages, :string, primary_key: false
    field :confirmation_sent_at, :naive_datetime, primary_key: false
    field :confirmation_token, :string, primary_key: false
    field :confirmed_at, :naive_datetime, primary_key: false
    field :consumed_timestep, :integer, primary_key: false
    field :created_at, :naive_datetime, primary_key: false
    field :current_sign_in_at, :naive_datetime, primary_key: false
    field :disabled, :boolean, primary_key: false
    field :email, :string, primary_key: false
    field :encrypted_otp_secret, :string, primary_key: false
    field :encrypted_otp_secret_iv, :string, primary_key: false
    field :encrypted_otp_secret_salt, :string, primary_key: false
    field :encrypted_password, :string, primary_key: false
    field :id, :integer, primary_key: true
    field :last_emailed_at, :naive_datetime, primary_key: false
    field :last_sign_in_at, :naive_datetime, primary_key: false
    field :locale, :string, primary_key: false
    field :moderator, :boolean, primary_key: false
    field :otp_backup_codes, :string, primary_key: false
    field :otp_required_for_login, :boolean, primary_key: false
    field :reset_password_sent_at, :naive_datetime, primary_key: false
    field :reset_password_token, :string, primary_key: false
    field :sign_in_count, :integer, primary_key: false
    field :sign_in_token, :string, primary_key: false
    field :sign_in_token_sent_at, :naive_datetime, primary_key: false
    field :sign_up_ip, :string, primary_key: false
    field :skip_sign_in_token, :boolean, primary_key: false
    field :unconfirmed_email, :string, primary_key: false
    field :updated_at, :naive_datetime, primary_key: false
    field :webauthn_id, :string, primary_key: false

    belongs_to :account, ApChem.DB.Accounts
    belongs_to :created_by_application, ApChem.DB.OauthApplications
    belongs_to :invite, ApChem.DB.Invites
    belongs_to :role, ApChem.DB.UserRoles
  end
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:account_id, :admin, :approved, :chosen_languages, :confirmation_sent_at, :confirmation_token, :confirmed_at, :consumed_timestep, :created_at, :created_by_application_id, :current_sign_in_at, :disabled, :email, :encrypted_otp_secret, :encrypted_otp_secret_iv, :encrypted_otp_secret_salt, :encrypted_password, :id, :invite_id, :last_emailed_at, :last_sign_in_at, :locale, :moderator, :otp_backup_codes, :otp_required_for_login, :reset_password_sent_at, :reset_password_token, :role_id, :sign_in_count, :sign_in_token, :sign_in_token_sent_at, :sign_up_ip, :skip_sign_in_token, :unconfirmed_email, :updated_at, :webauthn_id])
  end
end

defmodule ApChem.Repo do
  use Ecto.Repo,
    otp_app: :ap_chem,
    adapter: Ecto.Adapters.Postgres
end

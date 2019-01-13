defmodule Tanto.Repo.Migrations.UserProfiles do
  use Ecto.Migration

  def change do
    create table(:user_profiles) do
      add :name, :string
      add :email, :string
      add :user_id, references(:users, on_delete: :delete_all)
    end
  end
end

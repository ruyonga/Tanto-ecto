defmodule Tanto.Repo.Migrations.Categories do
  use Ecto.Migration

  def change do
    create table(:categories) do
      add :name,:string
      add :description, :text
    end
  end
end

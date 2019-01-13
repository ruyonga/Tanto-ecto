defmodule Tanto.Repo.Migrations.Tagging do
  use Ecto.Migration

  def change do
    create table(:tagging) do
      add :tag_id, references(:tags, on_delete: :delete_all)
      add :recipe_id, references(:recipes, on_delete: :delete_all)
    end
    create index(:tagging, [:recipe_id,:tag_id])
  end
end

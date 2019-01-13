defmodule Tanto.Repo.Migrations.Comments do
  use Ecto.Migration

  def change do
    create table(:comments) do
      add :body, :string
      add :author_id, references(:users, on_delete: :nothing)
      add :recipe_id, references(:recipes, on_delete: :delete_all)
    end
    create index(:comments, [:author_id])
    create index(:comments, [:recipe_id])
  end
end

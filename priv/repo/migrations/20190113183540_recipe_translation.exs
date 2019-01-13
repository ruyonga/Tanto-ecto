defmodule Tanto.Repo.Migrations.RecipeTranslation do
  use Ecto.Migration

  def change do
    create table (:recipe_translation) do
      add :lang_code, :string
      add :original_receip_id, references(:recipes, on_delete: :nothing)
      add :translated_recipe_id, references(:recipes, on_delete: :delete_all)
      add :status, :text
    end
    create index(:recipe_translation, [:original_receip_id])
    create index(:recipe_translation, [:translated_recipe_id])
  end
end

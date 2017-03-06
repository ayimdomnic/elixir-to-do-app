defmodule Web.Repo.Migrations.CreateBlog do
  use Ecto.Migration

  def change do
    create table(:blogs) do
      add :title, :string
      add :slug, :string
      add :content, :text
      add :image, :string
      timestamps()
    end

  end
end

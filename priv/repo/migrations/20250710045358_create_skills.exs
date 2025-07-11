defmodule Skillstack.Repo.Migrations.CreateSkills do
  use Ecto.Migration

  def change do
    create table(:skills) do
      add :name, :string
      add :level, :integer

      timestamps(type: :utc_datetime)
    end
  end
end

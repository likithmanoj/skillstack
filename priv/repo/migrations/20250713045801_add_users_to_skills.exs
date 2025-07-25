defmodule Skillstack.Repo.Migrations.AddUsersToSkills do
  use Ecto.Migration

  def change do
    alter table(:skills) do
      add :user_id, references(:users, on_delete: :delete_all)
    end

  end
end

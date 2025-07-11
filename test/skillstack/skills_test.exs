defmodule Skillstack.SkillsTest do
  use Skillstack.DataCase

  alias Skillstack.Skills

  describe "skills" do
    alias Skillstack.Skills.Skill

    import Skillstack.SkillsFixtures

    @invalid_attrs %{name: nil, level: nil}

    test "list_skills/0 returns all skills" do
      skill = skill_fixture()
      assert Skills.list_skills() == [skill]
    end

    test "get_skill!/1 returns the skill with given id" do
      skill = skill_fixture()
      assert Skills.get_skill!(skill.id) == skill
    end

    test "create_skill/1 with valid data creates a skill" do
      valid_attrs = %{name: "some name", level: 42}

      assert {:ok, %Skill{} = skill} = Skills.create_skill(valid_attrs)
      assert skill.name == "some name"
      assert skill.level == 42
    end

    test "create_skill/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Skills.create_skill(@invalid_attrs)
    end

    test "update_skill/2 with valid data updates the skill" do
      skill = skill_fixture()
      update_attrs = %{name: "some updated name", level: 43}

      assert {:ok, %Skill{} = skill} = Skills.update_skill(skill, update_attrs)
      assert skill.name == "some updated name"
      assert skill.level == 43
    end

    test "update_skill/2 with invalid data returns error changeset" do
      skill = skill_fixture()
      assert {:error, %Ecto.Changeset{}} = Skills.update_skill(skill, @invalid_attrs)
      assert skill == Skills.get_skill!(skill.id)
    end

    test "delete_skill/1 deletes the skill" do
      skill = skill_fixture()
      assert {:ok, %Skill{}} = Skills.delete_skill(skill)
      assert_raise Ecto.NoResultsError, fn -> Skills.get_skill!(skill.id) end
    end

    test "change_skill/1 returns a skill changeset" do
      skill = skill_fixture()
      assert %Ecto.Changeset{} = Skills.change_skill(skill)
    end
  end
end

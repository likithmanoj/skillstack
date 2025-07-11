defmodule Skillstack.SkillsFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Skillstack.Skills` context.
  """

  @doc """
  Generate a skill.
  """
  def skill_fixture(attrs \\ %{}) do
    {:ok, skill} =
      attrs
      |> Enum.into(%{
        level: 42,
        name: "some name"
      })
      |> Skillstack.Skills.create_skill()

    skill
  end
end

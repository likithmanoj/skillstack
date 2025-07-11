defmodule SkillstackWeb.SkillJSON do
  alias Skillstack.Skills.Skill

  @doc """
  Renders a list of skills.
  """
  def index(%{skills: skills}) do
    %{data: for(skill <- skills, do: data(skill))}
  end

  @doc """
  Renders a single skill.
  """
  def show(%{skill: skill}) do
    %{data: data(skill)}
  end

  defp data(%Skill{} = skill) do
    %{
      id: skill.id,
      name: skill.name,
      level: skill.level
    }
  end
end

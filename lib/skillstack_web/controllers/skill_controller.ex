defmodule SkillstackWeb.SkillController do
  use SkillstackWeb, :controller

  alias Skillstack.Skills
  alias Skillstack.Skills.Skill

  action_fallback SkillstackWeb.FallbackController

  def index(conn, _params) do
    skills = Skills.list_skills()
    render(conn, :index, skills: skills)
  end

  def create(conn, %{"skill" => skill_params}) do
    with {:ok, %Skill{} = skill} <- Skills.create_skill(skill_params) do
      conn
      |> put_status(:created)
      |> put_resp_header("location", ~p"/api/skills/#{skill}")
      |> render(:show, skill: skill)
    end
  end

  def show(conn, %{"id" => id}) do
    skill = Skills.get_skill!(id)
    render(conn, :show, skill: skill)
  end

  def update(conn, %{"id" => id, "skill" => skill_params}) do
    skill = Skills.get_skill!(id)

    with {:ok, %Skill{} = skill} <- Skills.update_skill(skill, skill_params) do
      render(conn, :show, skill: skill)
    end
  end

  def delete(conn, %{"id" => id}) do
    skill = Skills.get_skill!(id)

    with {:ok, %Skill{}} <- Skills.delete_skill(skill) do
      send_resp(conn, :no_content, "")
    end
  end
end

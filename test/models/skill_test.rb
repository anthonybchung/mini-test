require "test_helper"

class SkillTest < ActiveSupport::TestCase
  fixtures :creators, :skill_categories, :skills

  def setup
    @skill = skills(:one)
  end

  test "skill is valid" do
    assert @skill.valid?
  end

  test "description must not be null" do
    @skill.description = " "
    assert_not @skill.valid?
  end
end

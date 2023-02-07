require "test_helper"

class SkillCategoryTest < ActiveSupport::TestCase
  fixtures :creators, :skill_categories, :skills

  def setup
    @skill_category = skill_categories(:one)
    @creator = creators(:one)
    @skill_1 = skills(:one)
    @skill_2 = skills(:two)
 
  end

  test "skill category is valid" do
    assert @skill_category.valid?
  end

  test "name must be present" do
    @skill_category.name = " "
    assert_not @skill_category.valid?
  end

  test "creator_id must be present in skill_category" do
    @skill_category.creator_id = " "
    assert_not @skill_category.valid?
  end

  test "skill_category has many skills" do
    assert_equal [@skill_1,@skill_2],@skill_category.skills
  end

  test "destroy skill_category will destroy skills" do
    assert_difference("SkillCategory.count", -1) do
      assert_difference("Skill.count",-2) do
        @skill_category.destroy
      end
    end
  end
end

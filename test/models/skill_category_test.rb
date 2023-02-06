require "test_helper"

class SkillCategoryTest < ActiveSupport::TestCase
  fixtures :creators, :skill_categories

  def setup
    @skill_category = skill_categories(:one)
  end

  test "skill category is valid" do
    assert @skill_category.valid?
  end

  test "name must be present" do
    @skill_category.name = " "
    assert_not @skill_category.valid?
  end
end

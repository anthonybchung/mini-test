require "test_helper"

class AboutMeTest < ActiveSupport::TestCase
  fixtures :creators, :about_mes

  def setup
    @aboutme = about_mes(:one)
  end

  test "about me should be valid" do
    assert @aboutme.valid?
  end

  test "words must be present" do 
    @aboutme.paragraph = " "

    assert_not @aboutme.valid?
  end
end

require "test_helper"

class SocialTest < ActiveSupport::TestCase
  fixtures :creators, :socials
  
  def setup
    @social = socials(:one)
  end
  test "social should be valid" do
    assert_equal creators(:one).id, @social.creator_id
  end

  test "creator_id must be present in social" do
    @social.creator_id = " "
    assert_not @social.valid?
  end

  test "attribute svg must start with '<svg'" do
    social_array = @social.svg.split(" ")
    assert_equal social_array[0], "<svg"
  end

  test "attribute svg fails if it does not start with <svg" do
    @social.svg = "hello"
    assert_not @social.valid?
  end

  test "attribute url must start with https://" do
    @social.url = " "
    assert_not @social.valid?
  end

  test "attribute url must trim string" do
    @social.url = " https://google.com"
    assert @social.valid?
  end

  test "creator id must be present" do
    @social.creator_id = " "
    assert_not @social.valid?
  end
end

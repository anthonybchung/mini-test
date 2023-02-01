require "test_helper"

class CreatorTest < ActiveSupport::TestCase
  
  def setup
    @creator = Creator.new(name:"John Citizen",position: "Ruby on Rails Junior Developer",email:"John_Citizen@test.com.au")  
  end

  test "should be valid" do
    assert @creator.valid?
  end

  test "name: each word should start with a capital letter" do
    @creator.name = "john ceNa"
    @creator.save
    assert_equal(@creator.name,"John Cena")
  end

  test "position: each word should start with a capital letter" do
    @creator.position = "ruby on rails junior deveLoper"
    @creator.save
    assert_equal(@creator.position,"Ruby On Rails Junior Developer")
  end

  test "email: convert to lower case" do
    email_lowercase = @creator.email.downcase
    @creator.save
    assert_equal(@creator.email,email_lowercase)
  end

  test "email: must email-format" do
    @creator.email = "hello world"
    assert_not @creator.valid?
  end
end

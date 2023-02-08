require "test_helper"

class CreatorsControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end

  test "get index" do
    get creators_url
    assert_response :success
  end
end

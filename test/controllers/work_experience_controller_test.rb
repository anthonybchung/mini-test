require "test_helper"

class WorkExperienceControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end

  test "get index" do
    get "/work_experience/"
    assert_response :success
  end

  test "create a new work-experience page" do
    get "/work_experience/new"
    assert_response :success
  end

  test "get one work-experience with id" do
    get "/work_experience/1"
    assert_response :success
  end

  test "get page that edits work-experience" do
    get "/work_experience/2/edit"
    assert_response :success
  end
end

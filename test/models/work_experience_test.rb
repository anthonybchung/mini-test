require "test_helper"

class WorkExperienceTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def setup
    @work_experience = WorkExperience.new(company: "company1",location:"location1",start_date: "01/12/2010",end_date:"01/12/2015")
  end

  test "should be valid" do
    assert @work_experience.valid?
  end

  test "must contain a company" do
    @work_experience.company = " "
    assert_not @work_experience.valid?
  end

  test "must have a location" do
    @work_experience.location = " "
    assert_not @work_experience.valid?
  end

  test "must have a start date" do
    @work_experience.start_date = "   "
    assert_not @work_experience.valid?
  end

  test "end_date can NOT be less than start_date" do
    @work_experience.start_date = "12/12/2022"
    @work_experience.end_date = "11/11/2022"
    assert_not @work_experience.valid?
  end

  test "end_date is greater than start" do
    @work_experience.start_date = "12/12/2022"
    @work_experience.end_date = "20/12/2022"
    assert @work_experience.valid?
  end

  test "end_date can be null" do
    @work_experience.end_date = "  "
    assert @work_experience.valid?
  end

  test "end_date has to be less than today's date" do
    @work_experience.start_date = Date.today - 1
    @work_experience.end_date = Date.today + 1
    assert_not @work_experience.valid?
  end
  
  test "start_date has to be less than today's date" do
    @work_experience.start_date = Date.today + 1
    @work_experience.end_date = " "
    assert_not @work_experience.valid?
  end

  test "summary must be less than 200 characters" do 
    @work_experience.summary = "a"*201
    assert_not @work_experience.valid?
  end
 
end

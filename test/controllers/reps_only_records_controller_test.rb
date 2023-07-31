require "test_helper"

class RepsOnlyRecordsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get reps_only_records_create_url
    assert_response :success
  end

  test "should get update" do
    get reps_only_records_update_url
    assert_response :success
  end
end

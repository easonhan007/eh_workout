require "test_helper"

class DurationRecordsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get duration_records_create_url
    assert_response :success
  end

  test "should get update" do
    get duration_records_update_url
    assert_response :success
  end
end

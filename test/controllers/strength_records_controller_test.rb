require "test_helper"

class StrengthRecordsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get strength_records_create_url
    assert_response :success
  end

  test "should get update" do
    get strength_records_update_url
    assert_response :success
  end
end

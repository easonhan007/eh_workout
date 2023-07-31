require "test_helper"

class CardioRecordsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get cardio_records_create_url
    assert_response :success
  end

  test "should get destroy" do
    get cardio_records_destroy_url
    assert_response :success
  end
end

require 'test_helper'

class ReportsControllerControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get reports_controller_new_url
    assert_response :success
  end

  test "should get show" do
    get reports_controller_show_url
    assert_response :success
  end

end

require "test_helper"

class TwowayControllerTest < ActionDispatch::IntegrationTest
  test "should get Index" do
    get twoway_Index_url
    assert_response :success
  end
end

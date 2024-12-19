require "test_helper"

class CafesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get cafes_index_url
    assert_response :success
  end
end

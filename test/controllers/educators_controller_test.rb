require 'test_helper'

class EducatorsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get educators_index_url
    assert_response :success
  end

end

require 'test_helper'

class HrservicesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get hrservices_index_url
    assert_response :success
  end

end

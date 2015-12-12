require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get prayer" do
    get :prayer
    assert_response :success
  end

end

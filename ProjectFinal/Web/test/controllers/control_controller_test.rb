require 'test_helper'

class ControlControllerTest < ActionController::TestCase
  test "should get user" do
    get :user
    assert_response :success
  end

end

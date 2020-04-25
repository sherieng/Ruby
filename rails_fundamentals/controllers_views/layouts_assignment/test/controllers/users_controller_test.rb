require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  test "should get two_column" do
    get :two_column
    assert_response :success
  end

  test "should get three_column" do
    get :three_column
    assert_response :success
  end

end

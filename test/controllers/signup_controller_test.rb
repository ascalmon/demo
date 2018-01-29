require 'test_helper'

class SignupControllerTest < ActionDispatch::IntegrationTest
  test "should get users" do
    get signup_users_url
    assert_response :success
  end

end

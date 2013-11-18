require 'test_helper'

class RemindersControllerTest < ActionController::TestCase
  test "should get write" do
    get :write
    assert_response :success
  end

  test "should get create" do
    get :create
    assert_response :success
  end

  test "should get confirm" do
    get :confirm
    assert_response :success
  end

end

require 'test_helper'

class HomePageControllerTest < ActionController::TestCase
  test "should get view" do
    get :view
    assert_response :success
  end

  test "should get edit" do
    get :edit
    assert_response :success
  end

end

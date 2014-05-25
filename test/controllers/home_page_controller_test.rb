require 'test_helper'

class HomePageControllerTest < ActionController::TestCase
  test "should get student_view" do
    get :student_view
    assert_response :success
  end

  test "should get student_edit" do
    get :student_edit
    assert_response :success
  end

  test "should get society_view" do
    get :society_view
    assert_response :success
  end

  test "should get society_edit" do
    get :society_edit
    assert_response :success
  end

end

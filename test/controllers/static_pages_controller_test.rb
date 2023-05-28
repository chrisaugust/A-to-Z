require "test_helper"

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get root" do
    get root_path
    assert_response :success
    assert_select "title", "Home | A to Z Coaching"
  end

  test "should get home" do
    get static_pages_home_url
    assert_response :success
    assert_select "title", "Home | A to Z Coaching"
  end

  test "should get about" do
    get static_pages_about_url
    assert_response :success
    assert_select "title", "About | A to Z Coaching"
  end

  test "should get contact" do
    get static_pages_contact_url
    assert_response :success
    assert_select "title", "Contact | A to Z Coaching"
  end
end

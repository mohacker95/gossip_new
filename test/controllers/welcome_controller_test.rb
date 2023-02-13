require "test_helper"

class WelcomeControllerTest < ActionDispatch::IntegrationTest
  test "should get welcome_section" do
    get welcome_welcome_section_url
    assert_response :success
  end
end

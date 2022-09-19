require "test_helper"

class NotesControllerTest < ActionDispatch::IntegrationTest
  test "should get :create" do
    get notes_:create_url
    assert_response :success
  end
end

require "test_helper"

class CategoriesControllerTest < ActionDispatch::IntegrationTest
  test "should get :index" do
    get categories_:index_url
    assert_response :success
  end

  test "should get :show" do
    get categories_:show_url
    assert_response :success
  end

  test "should get :new" do
    get categories_:new_url
    assert_response :success
  end
end

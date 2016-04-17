require 'test_helper'

class UserstocksControllerTest < ActionController::TestCase
  setup do
    @userstock = userstocks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:userstocks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create userstock" do
    assert_difference('Userstock.count') do
      post :create, userstock: { stocj_id: @userstock.stocj_id, user_id: @userstock.user_id }
    end

    assert_redirected_to userstock_path(assigns(:userstock))
  end

  test "should show userstock" do
    get :show, id: @userstock
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @userstock
    assert_response :success
  end

  test "should update userstock" do
    patch :update, id: @userstock, userstock: { stocj_id: @userstock.stocj_id, user_id: @userstock.user_id }
    assert_redirected_to userstock_path(assigns(:userstock))
  end

  test "should destroy userstock" do
    assert_difference('Userstock.count', -1) do
      delete :destroy, id: @userstock
    end

    assert_redirected_to userstocks_path
  end
end

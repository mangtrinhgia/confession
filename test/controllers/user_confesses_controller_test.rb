require 'test_helper'

class UserConfessesControllerTest < ActionController::TestCase
  setup do
    @user_confess = user_confesses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_confesses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_confess" do
    assert_difference('UserConfess.count') do
      post :create, user_confess: { cf_body: @user_confess.cf_body, cf_title: @user_confess.cf_title, lover_name: @user_confess.lover_name, lover_sex: @user_confess.lover_sex }
    end

    assert_redirected_to user_confess_path(assigns(:user_confess))
  end

  test "should show user_confess" do
    get :show, id: @user_confess
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_confess
    assert_response :success
  end

  test "should update user_confess" do
    patch :update, id: @user_confess, user_confess: { cf_body: @user_confess.cf_body, cf_title: @user_confess.cf_title, lover_name: @user_confess.lover_name, lover_sex: @user_confess.lover_sex }
    assert_redirected_to user_confess_path(assigns(:user_confess))
  end

  test "should destroy user_confess" do
    assert_difference('UserConfess.count', -1) do
      delete :destroy, id: @user_confess
    end

    assert_redirected_to user_confesses_path
  end
end

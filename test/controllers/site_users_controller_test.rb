require 'test_helper'

class SiteUsersControllerTest < ActionController::TestCase
  setup do
    @site_user = site_users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:site_users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create site_user" do
    assert_difference('SiteUser.count') do
      post :create, site_user: { email: @site_user.email, name: @site_user.name, password_digest: @site_user.password_digest }
    end

    assert_redirected_to site_user_path(assigns(:site_user))
  end

  test "should show site_user" do
    get :show, id: @site_user
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @site_user
    assert_response :success
  end

  test "should update site_user" do
    patch :update, id: @site_user, site_user: { email: @site_user.email, name: @site_user.name, password_digest: @site_user.password_digest }
    assert_redirected_to site_user_path(assigns(:site_user))
  end

  test "should destroy site_user" do
    assert_difference('SiteUser.count', -1) do
      delete :destroy, id: @site_user
    end

    assert_redirected_to site_users_path
  end
end

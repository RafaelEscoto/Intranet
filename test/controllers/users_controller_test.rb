require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  setup do
    @user = users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user" do
    assert_difference('User.count') do
      post :create, user: { age: @user.age, area_id: @user.area_id, birthdate: @user.birthdate, boss: @user.boss, curp: @user.curp, date_of_admission: @user.date_of_admission, emergency_number: @user.emergency_number, employee_id: @user.employee_id, imms: @user.imms, name: @user.name, phone: @user.phone, rfc: @user.rfc, role_id: @user.role_id, salary: @user.salary }
    end

    assert_redirected_to user_path(assigns(:user))
  end

  test "should show user" do
    get :show, id: @user
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user
    assert_response :success
  end

  test "should update user" do
    patch :update, id: @user, user: { age: @user.age, area_id: @user.area_id, birthdate: @user.birthdate, boss: @user.boss, curp: @user.curp, date_of_admission: @user.date_of_admission, emergency_number: @user.emergency_number, employee_id: @user.employee_id, imms: @user.imms, name: @user.name, phone: @user.phone, rfc: @user.rfc, role_id: @user.role_id, salary: @user.salary }
    assert_redirected_to user_path(assigns(:user))
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete :destroy, id: @user
    end

    assert_redirected_to users_path
  end
end

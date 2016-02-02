require 'test_helper'

class CashiersControllerTest < ActionController::TestCase
  setup do
    @cashier = cashiers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cashiers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cashier" do
    assert_difference('Cashier.count') do
      post :create, cashier: { age: @cashier.age, dob: @cashier.dob, email: @cashier.email, enddate: @cashier.enddate, name: @cashier.name, phone: @cashier.phone, salaryperhour: @cashier.salaryperhour, startdate: @cashier.startdate, username: @cashier.username }
    end

    assert_redirected_to cashier_path(assigns(:cashier))
  end

  test "should show cashier" do
    get :show, id: @cashier
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cashier
    assert_response :success
  end

  test "should update cashier" do
    patch :update, id: @cashier, cashier: { age: @cashier.age, dob: @cashier.dob, email: @cashier.email, enddate: @cashier.enddate, name: @cashier.name, phone: @cashier.phone, salaryperhour: @cashier.salaryperhour, startdate: @cashier.startdate, username: @cashier.username }
    assert_redirected_to cashier_path(assigns(:cashier))
  end

  test "should destroy cashier" do
    assert_difference('Cashier.count', -1) do
      delete :destroy, id: @cashier
    end

    assert_redirected_to cashiers_path
  end
end

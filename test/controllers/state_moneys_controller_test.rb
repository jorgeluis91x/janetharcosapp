require 'test_helper'

class StateMoneysControllerTest < ActionController::TestCase
  setup do
    @state_money = state_moneys(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:state_moneys)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create state_money" do
    assert_difference('StateMoney.count') do
      post :create, state_money: { name: @state_money.name }
    end

    assert_redirected_to state_money_path(assigns(:state_money))
  end

  test "should show state_money" do
    get :show, id: @state_money
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @state_money
    assert_response :success
  end

  test "should update state_money" do
    patch :update, id: @state_money, state_money: { name: @state_money.name }
    assert_redirected_to state_money_path(assigns(:state_money))
  end

  test "should destroy state_money" do
    assert_difference('StateMoney.count', -1) do
      delete :destroy, id: @state_money
    end

    assert_redirected_to state_moneys_path
  end
end

require 'test_helper'

class DepartureTypesControllerTest < ActionController::TestCase
  setup do
    @departure_type = departure_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:departure_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create departure_type" do
    assert_difference('DepartureType.count') do
      post :create, departure_type: { name: @departure_type.name }
    end

    assert_redirected_to departure_type_path(assigns(:departure_type))
  end

  test "should show departure_type" do
    get :show, id: @departure_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @departure_type
    assert_response :success
  end

  test "should update departure_type" do
    patch :update, id: @departure_type, departure_type: { name: @departure_type.name }
    assert_redirected_to departure_type_path(assigns(:departure_type))
  end

  test "should destroy departure_type" do
    assert_difference('DepartureType.count', -1) do
      delete :destroy, id: @departure_type
    end

    assert_redirected_to departure_types_path
  end
end

require 'test_helper'

class StateProductsControllerTest < ActionController::TestCase
  setup do
    @state_product = state_products(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:state_products)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create state_product" do
    assert_difference('StateProduct.count') do
      post :create, state_product: { name: @state_product.name }
    end

    assert_redirected_to state_product_path(assigns(:state_product))
  end

  test "should show state_product" do
    get :show, id: @state_product
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @state_product
    assert_response :success
  end

  test "should update state_product" do
    patch :update, id: @state_product, state_product: { name: @state_product.name }
    assert_redirected_to state_product_path(assigns(:state_product))
  end

  test "should destroy state_product" do
    assert_difference('StateProduct.count', -1) do
      delete :destroy, id: @state_product
    end

    assert_redirected_to state_products_path
  end
end

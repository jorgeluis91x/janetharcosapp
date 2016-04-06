require 'test_helper'

class InvoiceDetailsControllerTest < ActionController::TestCase
  setup do
    @invoice_detail = invoice_details(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:invoice_details)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create invoice_detail" do
    assert_difference('InvoiceDetail.count') do
      post :create, invoice_detail: { article_id: @invoice_detail.article_id, invoice_id: @invoice_detail.invoice_id, observation: @invoice_detail.observation, quantity: @invoice_detail.quantity, state_product_id: @invoice_detail.state_product_id, unit_value: @invoice_detail.unit_value }
    end

    assert_redirected_to invoice_detail_path(assigns(:invoice_detail))
  end

  test "should show invoice_detail" do
    get :show, id: @invoice_detail
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @invoice_detail
    assert_response :success
  end

  test "should update invoice_detail" do
    patch :update, id: @invoice_detail, invoice_detail: { article_id: @invoice_detail.article_id, invoice_id: @invoice_detail.invoice_id, observation: @invoice_detail.observation, quantity: @invoice_detail.quantity, state_product_id: @invoice_detail.state_product_id, unit_value: @invoice_detail.unit_value }
    assert_redirected_to invoice_detail_path(assigns(:invoice_detail))
  end

  test "should destroy invoice_detail" do
    assert_difference('InvoiceDetail.count', -1) do
      delete :destroy, id: @invoice_detail
    end

    assert_redirected_to invoice_details_path
  end
end

require 'test_helper'

class TotalInvoicesControllerTest < ActionController::TestCase
  setup do
    @total_invoice = total_invoices(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:total_invoices)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create total_invoice" do
    assert_difference('TotalInvoice.count') do
      post :create, total_invoice: { number: @total_invoice.number, total_value: @total_invoice.total_value }
    end

    assert_redirected_to total_invoice_path(assigns(:total_invoice))
  end

  test "should show total_invoice" do
    get :show, id: @total_invoice
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @total_invoice
    assert_response :success
  end

  test "should update total_invoice" do
    patch :update, id: @total_invoice, total_invoice: { number: @total_invoice.number, total_value: @total_invoice.total_value }
    assert_redirected_to total_invoice_path(assigns(:total_invoice))
  end

  test "should destroy total_invoice" do
    assert_difference('TotalInvoice.count', -1) do
      delete :destroy, id: @total_invoice
    end

    assert_redirected_to total_invoices_path
  end
end

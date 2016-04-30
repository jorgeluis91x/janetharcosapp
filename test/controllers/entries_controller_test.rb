require 'test_helper'

class EntriesControllerTest < ActionController::TestCase
  setup do
    @entry = entries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:entries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create entry" do
    assert_difference('Entry.count') do
      post :create, entry: { deposit: @entry.deposit, entry_date: @entry.entry_date, entry_type_id: @entry.entry_type_id, observation: @entry.observation, payment_type: @entry.payment_type, total_invoice_id: @entry.total_invoice_id }
    end

    assert_redirected_to entry_path(assigns(:entry))
  end

  test "should show entry" do
    get :show, id: @entry
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @entry
    assert_response :success
  end

  test "should update entry" do
    patch :update, id: @entry, entry: { deposit: @entry.deposit, entry_date: @entry.entry_date, entry_type_id: @entry.entry_type_id, observation: @entry.observation, payment_type: @entry.payment_type, total_invoice_id: @entry.total_invoice_id }
    assert_redirected_to entry_path(assigns(:entry))
  end

  test "should destroy entry" do
    assert_difference('Entry.count', -1) do
      delete :destroy, id: @entry
    end

    assert_redirected_to entries_path
  end
end

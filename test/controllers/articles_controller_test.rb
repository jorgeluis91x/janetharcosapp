require 'test_helper'

class ArticlesControllerTest < ActionController::TestCase
  setup do
    @article = articles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:articles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create article" do
    assert_difference('Article.count') do
      post :create, article: { detail: @article.detail, product_category_id: @article.product_category_id, provider_id: @article.provider_id, purchase_value: @article.purchase_value, quantity: @article.quantity, reference: @article.reference, rental_value: @article.rental_value, sales_value: @article.sales_value, size: @article.size, status: @article.status }
    end

    assert_redirected_to article_path(assigns(:article))
  end

  test "should show article" do
    get :show, id: @article
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @article
    assert_response :success
  end

  test "should update article" do
    patch :update, id: @article, article: { detail: @article.detail, product_category_id: @article.product_category_id, provider_id: @article.provider_id, purchase_value: @article.purchase_value, quantity: @article.quantity, reference: @article.reference, rental_value: @article.rental_value, sales_value: @article.sales_value, size: @article.size, status: @article.status }
    assert_redirected_to article_path(assigns(:article))
  end

  test "should destroy article" do
    assert_difference('Article.count', -1) do
      delete :destroy, id: @article
    end

    assert_redirected_to articles_path
  end
end

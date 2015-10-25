require 'test_helper'

class PreproductsControllerTest < ActionController::TestCase
  setup do
    @preproduct = preproducts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:preproducts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create preproduct" do
    assert_difference('Preproduct.count') do
      post :create, preproduct: { availibility: @preproduct.availibility, description: @preproduct.description, name: @preproduct.name, picture: @preproduct.picture, price: @preproduct.price }
    end

    assert_redirected_to preproduct_path(assigns(:preproduct))
  end

  test "should show preproduct" do
    get :show, id: @preproduct
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @preproduct
    assert_response :success
  end

  test "should update preproduct" do
    patch :update, id: @preproduct, preproduct: { availibility: @preproduct.availibility, description: @preproduct.description, name: @preproduct.name, picture: @preproduct.picture, price: @preproduct.price }
    assert_redirected_to preproduct_path(assigns(:preproduct))
  end

  test "should destroy preproduct" do
    assert_difference('Preproduct.count', -1) do
      delete :destroy, id: @preproduct
    end

    assert_redirected_to preproducts_path
  end
end

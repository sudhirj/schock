require 'test_helper'

class ChocolatesControllerTest < ActionController::TestCase
  setup do
    @chocolate = chocolates(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:chocolates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create chocolate" do
    assert_difference('Chocolate.count') do
      post :create, chocolate: @chocolate.attributes
    end

    assert_redirected_to chocolate_path(assigns(:chocolate))
  end

  test "should show chocolate" do
    get :show, id: @chocolate.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @chocolate.to_param
    assert_response :success
  end

  test "should update chocolate" do
    put :update, id: @chocolate.to_param, chocolate: @chocolate.attributes
    assert_redirected_to chocolate_path(assigns(:chocolate))
  end

  test "should destroy chocolate" do
    assert_difference('Chocolate.count', -1) do
      delete :destroy, id: @chocolate.to_param
    end

    assert_redirected_to chocolates_path
  end
end

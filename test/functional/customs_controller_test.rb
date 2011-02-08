require 'test_helper'

class CustomsControllerTest < ActionController::TestCase
  setup do
    @custom = customs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:customs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create custom" do
    assert_difference('Custom.count') do
      post :create, :custom => @custom.attributes
    end

    assert_redirected_to custom_path(assigns(:custom))
  end

  test "should show custom" do
    get :show, :id => @custom.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @custom.to_param
    assert_response :success
  end

  test "should update custom" do
    put :update, :id => @custom.to_param, :custom => @custom.attributes
    assert_redirected_to custom_path(assigns(:custom))
  end

  test "should destroy custom" do
    assert_difference('Custom.count', -1) do
      delete :destroy, :id => @custom.to_param
    end

    assert_redirected_to customs_path
  end
end

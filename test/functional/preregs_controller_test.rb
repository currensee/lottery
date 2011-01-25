require 'test_helper'

class PreregsControllerTest < ActionController::TestCase
  setup do
    @prereg = preregs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:preregs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create prereg" do
    assert_difference('Prereg.count') do
      post :create, :prereg => @prereg.attributes
    end

    assert_redirected_to prereg_path(assigns(:prereg))
  end

  test "should show prereg" do
    get :show, :id => @prereg.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @prereg.to_param
    assert_response :success
  end

  test "should update prereg" do
    put :update, :id => @prereg.to_param, :prereg => @prereg.attributes
    assert_redirected_to prereg_path(assigns(:prereg))
  end

  test "should destroy prereg" do
    assert_difference('Prereg.count', -1) do
      delete :destroy, :id => @prereg.to_param
    end

    assert_redirected_to preregs_path
  end
end

require 'test_helper'

class PrizecountsControllerTest < ActionController::TestCase
  setup do
    @prizecount = prizecounts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:prizecounts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create prizecount" do
    assert_difference('Prizecount.count') do
      post :create, :prizecount => @prizecount.attributes
    end

    assert_redirected_to prizecount_path(assigns(:prizecount))
  end

  test "should show prizecount" do
    get :show, :id => @prizecount.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @prizecount.to_param
    assert_response :success
  end

  test "should update prizecount" do
    put :update, :id => @prizecount.to_param, :prizecount => @prizecount.attributes
    assert_redirected_to prizecount_path(assigns(:prizecount))
  end

  test "should destroy prizecount" do
    assert_difference('Prizecount.count', -1) do
      delete :destroy, :id => @prizecount.to_param
    end

    assert_redirected_to prizecounts_path
  end
end

require 'test_helper'

class MastsControllerTest < ActionController::TestCase
  setup do
    @mast = masts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:masts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mast" do
    assert_difference('Mast.count') do
      post :create, mast: { : @mast., name: @mast.name }
    end

    assert_redirected_to mast_path(assigns(:mast))
  end

  test "should show mast" do
    get :show, id: @mast
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mast
    assert_response :success
  end

  test "should update mast" do
    patch :update, id: @mast, mast: { : @mast., name: @mast.name }
    assert_redirected_to mast_path(assigns(:mast))
  end

  test "should destroy mast" do
    assert_difference('Mast.count', -1) do
      delete :destroy, id: @mast
    end

    assert_redirected_to masts_path
  end
end

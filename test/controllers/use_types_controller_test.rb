require 'test_helper'

class UseTypesControllerTest < ActionController::TestCase
  setup do
    @use_type = use_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:use_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create use_type" do
    assert_difference('UseType.count') do
      post :create, use_type: { name: @use_type.name }
    end

    assert_redirected_to use_type_path(assigns(:use_type))
  end

  test "should show use_type" do
    get :show, id: @use_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @use_type
    assert_response :success
  end

  test "should update use_type" do
    patch :update, id: @use_type, use_type: { name: @use_type.name }
    assert_redirected_to use_type_path(assigns(:use_type))
  end

  test "should destroy use_type" do
    assert_difference('UseType.count', -1) do
      delete :destroy, id: @use_type
    end

    assert_redirected_to use_types_path
  end
end

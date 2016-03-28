require 'test_helper'

class ResidentialApplicationsControllerTest < ActionController::TestCase
  setup do
    @residential_application = residential_applications(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:residential_applications)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create residential_application" do
    assert_difference('ResidentialApplication.count') do
      post :create, residential_application: { date_completed: @residential_application.date_completed, date_received: @residential_application.date_received, fee_paid: @residential_application.fee_paid }
    end

    assert_redirected_to residential_application_path(assigns(:residential_application))
  end

  test "should show residential_application" do
    get :show, id: @residential_application
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @residential_application
    assert_response :success
  end

  test "should update residential_application" do
    patch :update, id: @residential_application, residential_application: { date_completed: @residential_application.date_completed, date_received: @residential_application.date_received, fee_paid: @residential_application.fee_paid }
    assert_redirected_to residential_application_path(assigns(:residential_application))
  end

  test "should destroy residential_application" do
    assert_difference('ResidentialApplication.count', -1) do
      delete :destroy, id: @residential_application
    end

    assert_redirected_to residential_applications_path
  end
end

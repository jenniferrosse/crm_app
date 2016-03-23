require 'test_helper'

class AvailableUnitsControllerTest < ActionController::TestCase
  setup do
    @available_unit = available_units(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:available_units)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create available_unit" do
    assert_difference('AvailableUnit.count') do
      post :create, available_unit: { address: @available_unit.address, bathroom: @available_unit.bathroom, bedroom: @available_unit.bedroom, city: @available_unit.city, craigslist_title: @available_unit.craigslist_title, features: @available_unit.features, laundry: @available_unit.laundry, market_rent: @available_unit.market_rent, short_description: @available_unit.short_description, sq_ft: @available_unit.sq_ft, unit_id: @available_unit.unit_id, zip: @available_unit.zip }
    end

    assert_redirected_to available_unit_path(assigns(:available_unit))
  end

  test "should show available_unit" do
    get :show, id: @available_unit
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @available_unit
    assert_response :success
  end

  test "should update available_unit" do
    patch :update, id: @available_unit, available_unit: { address: @available_unit.address, bathroom: @available_unit.bathroom, bedroom: @available_unit.bedroom, city: @available_unit.city, craigslist_title: @available_unit.craigslist_title, features: @available_unit.features, laundry: @available_unit.laundry, market_rent: @available_unit.market_rent, short_description: @available_unit.short_description, sq_ft: @available_unit.sq_ft, unit_id: @available_unit.unit_id, zip: @available_unit.zip }
    assert_redirected_to available_unit_path(assigns(:available_unit))
  end

  test "should destroy available_unit" do
    assert_difference('AvailableUnit.count', -1) do
      delete :destroy, id: @available_unit
    end

    assert_redirected_to available_units_path
  end
end

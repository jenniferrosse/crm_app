require 'test_helper'

class PrequalificationsControllerTest < ActionController::TestCase
  setup do
    @prequalification = prequalifications(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:prequalifications)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create prequalification" do
    assert_difference('Prequalification.count') do
      post :create, prequalification: { availability: @prequalification.availability, combined_income: @prequalification.combined_income, earliest_move_in: @prequalification.earliest_move_in, employer: @prequalification.employer, income: @prequalification.income, latest_move_in: @prequalification.latest_move_in, people: @prequalification.people, pets: @prequalification.pets, preference: @prequalification.preference, preferences: @prequalification.preferences, prequalification_date: @prequalification.prequalification_date, price_max: @prequalification.price_max, price_min: @prequalification.price_min, profession: @prequalification.profession, residential_lead_id: @prequalification.residential_lead_id, smoker: @prequalification.smoker }
    end

    assert_redirected_to prequalification_path(assigns(:prequalification))
  end

  test "should show prequalification" do
    get :show, id: @prequalification
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @prequalification
    assert_response :success
  end

  test "should update prequalification" do
    patch :update, id: @prequalification, prequalification: { availability: @prequalification.availability, combined_income: @prequalification.combined_income, earliest_move_in: @prequalification.earliest_move_in, employer: @prequalification.employer, income: @prequalification.income, latest_move_in: @prequalification.latest_move_in, people: @prequalification.people, pets: @prequalification.pets, preference: @prequalification.preference, preferences: @prequalification.preferences, prequalification_date: @prequalification.prequalification_date, price_max: @prequalification.price_max, price_min: @prequalification.price_min, profession: @prequalification.profession, residential_lead_id: @prequalification.residential_lead_id, smoker: @prequalification.smoker }
    assert_redirected_to prequalification_path(assigns(:prequalification))
  end

  test "should destroy prequalification" do
    assert_difference('Prequalification.count', -1) do
      delete :destroy, id: @prequalification
    end

    assert_redirected_to prequalifications_path
  end
end

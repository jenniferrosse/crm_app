require 'test_helper'

class ResidentialLeadsControllerTest < ActionController::TestCase
  setup do
    @residential_lead = residential_leads(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:residential_leads)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create residential_lead" do
    assert_difference('ResidentialLead.count') do
      post :create, residential_lead: { combined_income: @residential_lead.combined_income, contact_type: @residential_lead.contact_type, earliest_move_in: @residential_lead.earliest_move_in, email: @residential_lead.email, first_name: @residential_lead.first_name, income: @residential_lead.income, last_name: @residential_lead.last_name, latest_move_in: @residential_lead.latest_move_in, people: @residential_lead.people, pets: @residential_lead.pets, phone: @residential_lead.phone, price_max: @residential_lead.price_max, price_min: @residential_lead.price_min, profession: @residential_lead.profession, properties_referenced: @residential_lead.properties_referenced, source: @residential_lead.source }
    end

    assert_redirected_to residential_lead_path(assigns(:residential_lead))
  end

  test "should show residential_lead" do
    get :show, id: @residential_lead
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @residential_lead
    assert_response :success
  end

  test "should update residential_lead" do
    patch :update, id: @residential_lead, residential_lead: { combined_income: @residential_lead.combined_income, contact_type: @residential_lead.contact_type, earliest_move_in: @residential_lead.earliest_move_in, email: @residential_lead.email, first_name: @residential_lead.first_name, income: @residential_lead.income, last_name: @residential_lead.last_name, latest_move_in: @residential_lead.latest_move_in, people: @residential_lead.people, pets: @residential_lead.pets, phone: @residential_lead.phone, price_max: @residential_lead.price_max, price_min: @residential_lead.price_min, profession: @residential_lead.profession, properties_referenced: @residential_lead.properties_referenced, source: @residential_lead.source }
    assert_redirected_to residential_lead_path(assigns(:residential_lead))
  end

  test "should destroy residential_lead" do
    assert_difference('ResidentialLead.count', -1) do
      delete :destroy, id: @residential_lead
    end

    assert_redirected_to residential_leads_path
  end
end

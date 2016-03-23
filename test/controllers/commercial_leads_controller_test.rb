require 'test_helper'

class CommercialLeadsControllerTest < ActionController::TestCase
  setup do
    @commercial_lead = commercial_leads(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:commercial_leads)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create commercial_lead" do
    assert_difference('CommercialLead.count') do
      post :create, commercial_lead: { contact_date: @commercial_lead.contact_date, contact_type: @commercial_lead.contact_type, description: @commercial_lead.description, email: @commercial_lead.email, first_name: @commercial_lead.first_name, last_name: @commercial_lead.last_name, phone: @commercial_lead.phone, properties_referenced: @commercial_lead.properties_referenced, source: @commercial_lead.source }
    end

    assert_redirected_to commercial_lead_path(assigns(:commercial_lead))
  end

  test "should show commercial_lead" do
    get :show, id: @commercial_lead
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @commercial_lead
    assert_response :success
  end

  test "should update commercial_lead" do
    patch :update, id: @commercial_lead, commercial_lead: { contact_date: @commercial_lead.contact_date, contact_type: @commercial_lead.contact_type, description: @commercial_lead.description, email: @commercial_lead.email, first_name: @commercial_lead.first_name, last_name: @commercial_lead.last_name, phone: @commercial_lead.phone, properties_referenced: @commercial_lead.properties_referenced, source: @commercial_lead.source }
    assert_redirected_to commercial_lead_path(assigns(:commercial_lead))
  end

  test "should destroy commercial_lead" do
    assert_difference('CommercialLead.count', -1) do
      delete :destroy, id: @commercial_lead
    end

    assert_redirected_to commercial_leads_path
  end
end

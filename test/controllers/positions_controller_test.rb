require 'test_helper'

class PositionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @position = positions(:one)
  end

  test "should get index" do
    get positions_url
    assert_response :success
  end

  test "should get new" do
    get new_position_url
    assert_response :success
  end

  test "should create position" do
    assert_difference('Position.count') do
      post positions_url, params: { position: { appication_submitted: @position.appication_submitted, company_address: @position.company_address, company_contact: @position.company_contact, company_email: @position.company_email, company_name: @position.company_name, company_phone: @position.company_phone, cover_letter_submitted: @position.cover_letter_submitted, date_application_submitted: @position.date_application_submitted, glassdoor_review: @position.glassdoor_review, position_description_url: @position.position_description_url, position_name: @position.position_name, staffing_agency_address: @position.staffing_agency_address, staffing_agency_contact: @position.staffing_agency_contact, staffing_agency_fax: @position.staffing_agency_fax, staffing_agency_name: @position.staffing_agency_name, staffing_agency_notes: @position.staffing_agency_notes, staffing_agency_phone: @position.staffing_agency_phone, status: @position.status } }
    end

    assert_redirected_to position_url(Position.last)
  end

  test "should show position" do
    get position_url(@position)
    assert_response :success
  end

  test "should get edit" do
    get edit_position_url(@position)
    assert_response :success
  end

  test "should update position" do
    patch position_url(@position), params: { position: { appication_submitted: @position.appication_submitted, company_address: @position.company_address, company_contact: @position.company_contact, company_email: @position.company_email, company_name: @position.company_name, company_phone: @position.company_phone, cover_letter_submitted: @position.cover_letter_submitted, date_application_submitted: @position.date_application_submitted, glassdoor_review: @position.glassdoor_review, position_description_url: @position.position_description_url, position_name: @position.position_name, staffing_agency_address: @position.staffing_agency_address, staffing_agency_contact: @position.staffing_agency_contact, staffing_agency_fax: @position.staffing_agency_fax, staffing_agency_name: @position.staffing_agency_name, staffing_agency_notes: @position.staffing_agency_notes, staffing_agency_phone: @position.staffing_agency_phone, status: @position.status } }
    assert_redirected_to position_url(@position)
  end

  test "should destroy position" do
    assert_difference('Position.count', -1) do
      delete position_url(@position)
    end

    assert_redirected_to positions_url
  end
end

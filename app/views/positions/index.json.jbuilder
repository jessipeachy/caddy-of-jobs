json.array!(@positions) do |position|
  json.extract! position, :id, :company_name, :position_name, :position_description_url, :company_phone, :company_address, :company_email, :company_contact, :appication_submitted, :cover_letter_submitted, :glassdoor_review, :status, :date_application_submitted, :staffing_agency_name, :staffing_agency_phone, :staffing_agency_address, :staffing_agency_contact, :staffing_agency_fax, :staffing_agency_notes
  json.url position_url(position, format: :json)
end

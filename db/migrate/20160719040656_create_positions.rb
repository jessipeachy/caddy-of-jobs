class CreatePositions < ActiveRecord::Migration[5.0]
  def change
    create_table :positions do |t|
      t.string :company_name
      t.string :position_name
      t.string :position_description_url
      t.string :company_phone
      t.string :company_address
      t.text :company_email
      t.string :company_contact
      t.string :appication_submitted
      t.string :cover_letter_submitted
      t.decimal :glassdoor_review
      t.string :status
      t.date :date_application_submitted
      t.string :staffing_agency_name
      t.string :staffing_agency_phone
      t.string :staffing_agency_address
      t.string :staffing_agency_contact
      t.string :staffing_agency_fax
      t.string :staffing_agency_notes

      t.timestamps
    end
  end
end

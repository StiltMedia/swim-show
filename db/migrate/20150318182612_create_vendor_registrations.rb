class CreateVendorRegistrations < ActiveRecord::Migration
  def change
    create_table :vendor_registrations do |t|
      t.string :first_name
      t.string :last_name
      t.string :company
      t.string :title
      t.string :address_1
      t.string :address_2
      t.string :city
      t.string :state
      t.string :province
      t.string :postal_code
      t.string :country
      t.string :email
      t.string :opt_out_email
      t.string :website
      t.string :phone
      t.string :extension
      t.string :phone_2
      t.string :fax
      t.string :opt_out_phone
      t.string :type_of_store
      t.string :status
      t.string :number_of_stores
      t.string :attended_swimshow
      t.string :attended_other_tradeshows
      t.string :mail_show_directory

      t.timestamps null: false
    end
  end
end

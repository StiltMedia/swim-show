class AddYearsAttendedShowToVendorRegistration < ActiveRecord::Migration
  def change
    add_column :vendor_registrations, :years_attened_show, :interger,  default: 1
  end
end

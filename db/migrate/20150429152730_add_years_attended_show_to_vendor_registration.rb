class AddYearsAttendedShowToVendorRegistration < ActiveRecord::Migration
  def change
    add_column :vendor_registrations, :years_attended_show, :integer
  end
end

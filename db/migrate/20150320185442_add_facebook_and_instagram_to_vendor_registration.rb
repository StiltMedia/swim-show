class AddFacebookAndInstagramToVendorRegistration < ActiveRecord::Migration
  def change
    add_column :vendor_registrations, :instagram, :string
    add_column :vendor_registrations, :facebook, :string
  end
end

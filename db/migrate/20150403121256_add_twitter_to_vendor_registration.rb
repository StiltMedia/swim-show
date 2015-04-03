class AddTwitterToVendorRegistration < ActiveRecord::Migration
  def change
    add_column :vendor_registrations, :twitter, :string
  end
end

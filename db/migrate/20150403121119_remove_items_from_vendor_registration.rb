class RemoveItemsFromVendorRegistration < ActiveRecord::Migration
  def change
    remove_column :vendor_registrations, :attended_other_tradeshows, :string
  end
end

class AddProductToVendorRegistration < ActiveRecord::Migration
  def change
    add_column :vendor_registrations, :product_id, :integer
  end
end

class AddVendorResgistrationToProduct < ActiveRecord::Migration
  def change
    add_column :products, :vendor_registration_id, :integer
  end
end

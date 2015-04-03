class CreateTradeshowsVendorRegistrations < ActiveRecord::Migration
  def change
    create_table :tradeshows_vendor_registrations, :id => false do |t|
      t.references :tradeshow, :vendor_registration
    end

    add_index :tradeshows_vendor_registrations, [:tradeshow_id, :vendor_registration_id],
      name: "tradeshows_vendor_registrations_index",
      unique: true
  end
end

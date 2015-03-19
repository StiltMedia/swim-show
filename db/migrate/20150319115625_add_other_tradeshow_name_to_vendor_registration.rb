class AddOtherTradeshowNameToVendorRegistration < ActiveRecord::Migration
  def change
    add_column :vendor_registrations, :other_tradeshow_name, :string
  end
end

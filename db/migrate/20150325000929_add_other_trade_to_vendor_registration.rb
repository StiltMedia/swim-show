class AddOtherTradeToVendorRegistration < ActiveRecord::Migration
  def change
    add_column :vendor_registrations, :other_trade_id, :integer
  end
end

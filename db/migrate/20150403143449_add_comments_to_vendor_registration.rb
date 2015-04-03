class AddCommentsToVendorRegistration < ActiveRecord::Migration
  def change
    add_column :vendor_registrations, :comments, :text
  end
end

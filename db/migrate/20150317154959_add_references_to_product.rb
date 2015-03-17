class AddReferencesToProduct < ActiveRecord::Migration
  def change
    add_reference :products, :price_point, index: true
    add_foreign_key :products, :price_points
    add_reference :products, :category, index: true
    add_foreign_key :products, :categories
    add_reference :products, :vendor_registration, index: true
    add_foreign_key :products, :vendor_registrations
  end
end

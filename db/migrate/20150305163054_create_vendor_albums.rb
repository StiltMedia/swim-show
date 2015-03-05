class CreateVendorAlbums < ActiveRecord::Migration
  def change
    create_table :vendor_albums do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end

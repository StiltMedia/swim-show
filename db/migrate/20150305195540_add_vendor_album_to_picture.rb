class AddVendorAlbumToPicture < ActiveRecord::Migration
  def change
    add_column :pictures, :vendor_album_id, :integer
  end
end

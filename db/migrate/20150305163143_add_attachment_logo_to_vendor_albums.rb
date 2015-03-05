class AddAttachmentLogoToVendorAlbums < ActiveRecord::Migration
  def self.up
    change_table :vendor_albums do |t|
      t.attachment :logo
    end
  end

  def self.down
    remove_attachment :vendor_albums, :logo
  end
end

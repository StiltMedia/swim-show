class AddFacebookAndInstagramToMediaRegistration < ActiveRecord::Migration
  def change
    add_column :media_registrations, :instagram, :string
    add_column :media_registrations, :facebook, :string
  end
end

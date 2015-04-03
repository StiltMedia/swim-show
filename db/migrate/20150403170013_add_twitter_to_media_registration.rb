class AddTwitterToMediaRegistration < ActiveRecord::Migration
  def change
    add_column :media_registrations, :twitter, :string
  end
end

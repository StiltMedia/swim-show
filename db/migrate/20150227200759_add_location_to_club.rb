class AddLocationToClub < ActiveRecord::Migration
  def change
    add_column :clubs, :location_id, :iteger
  end
end

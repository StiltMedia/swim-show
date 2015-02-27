class CreateClubs < ActiveRecord::Migration
  def change
    create_table :clubs do |t|
      t.string :name
      t.string :address
      t.string :phone
      t.string :short_description

      t.timestamps null: false
    end
  end
end

class CreatePricePoints < ActiveRecord::Migration
  def change
    create_table :price_points do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end

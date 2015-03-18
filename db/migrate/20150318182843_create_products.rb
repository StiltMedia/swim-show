class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :category
      t.string :price_point

      t.timestamps null: false
    end
  end
end

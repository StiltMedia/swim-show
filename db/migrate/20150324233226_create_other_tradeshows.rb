class CreateOtherTradeshows < ActiveRecord::Migration
  def change
    create_table :other_tradeshows do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end

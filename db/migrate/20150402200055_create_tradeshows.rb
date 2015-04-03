class CreateTradeshows < ActiveRecord::Migration
  def change
    create_table :tradeshows do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end

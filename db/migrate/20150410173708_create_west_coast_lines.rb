class CreateWestCoastLines < ActiveRecord::Migration
  def change
    create_table :west_coast_lines do |t|
      t.string :letter
      t.string :name

      t.timestamps null: false
    end
  end
end

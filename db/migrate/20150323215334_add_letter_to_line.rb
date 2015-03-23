class AddLetterToLine < ActiveRecord::Migration
  def change
    add_column :lines, :letter, :string
  end
end

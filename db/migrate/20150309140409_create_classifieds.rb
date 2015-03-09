class CreateClassifieds < ActiveRecord::Migration
  def change
    create_table :classifieds do |t|
      t.string :company
      t.string :position
      t.string :short_description
      t.string :email
      t.string :phone
      t.string :website
      t.text :description

      t.timestamps null: false
    end
  end
end

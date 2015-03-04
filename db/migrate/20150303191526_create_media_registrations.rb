class CreateMediaRegistrations < ActiveRecord::Migration
  def change
    create_table :media_registrations do |t|
      t.string :first_name
      t.string :last_name
      t.string :title
      t.string :other
      t.string :publication
      t.string :type_of_media
      t.string :address1
      t.string :address2
      t.string :city
      t.string :state
      t.string :province
      t.string :postal_code
      t.string :country
      t.string :email
      t.string :phone
      t.string :extension
      t.string :fax
      t.string :website
      t.string :media_outlet
      t.text :comments

      t.timestamps null: false
    end
  end
end

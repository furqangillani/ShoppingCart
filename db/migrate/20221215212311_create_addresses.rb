class CreateAddresses < ActiveRecord::Migration[7.0]
  def change
    create_table :addresses do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone
      t.text :address
      t.string :city
      t.string :country
      t.text :note

      t.timestamps
    end
  end
end

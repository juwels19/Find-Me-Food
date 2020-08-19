class CreateRestaurants < ActiveRecord::Migration[6.0]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :city
      t.string :country
      t.string :genre
      t.string :phone_num

      t.timestamps
    end
    add_index :restaurants, :name, unique: true
  end
end

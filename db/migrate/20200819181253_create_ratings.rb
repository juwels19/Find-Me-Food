class CreateRatings < ActiveRecord::Migration[6.0]
  def change
    create_table :ratings do |t|
      t.integer :rating, null: false
      t.integer :user_id, null: false
      t.integer :restaurant_id, null: false

      t.timestamps
    end
    add_foreign_key :ratings, :users
    add_foreign_key :ratings, :restaurants
  end
end

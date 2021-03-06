class CreateRestaurants < ActiveRecord::Migration[6.0]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :address
      t.string :category
      t.string :review
      t.integer :phone_number
      t.integer :stars

      t.timestamps
    end
  end
end

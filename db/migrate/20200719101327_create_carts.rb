class CreateCarts < ActiveRecord::Migration[5.1]
  def change
    create_table :carts do |t|
      t.string :value
      t.string :no_of_items

      t.timestamps
    end
  end
end

class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.string :description
      t.string :user_id
      t.string :main_category_id
      t.string :sub_category_id
      t.timestamps
    end
  end
end

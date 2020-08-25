class CreateSubCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :sub_categories do |t|
      t.string :name
      t.text :description
      t.string :main_category_id
      t.timestamps
    end
  end
end

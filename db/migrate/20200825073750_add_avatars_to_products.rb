class AddAvatarsToProducts < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :avatars, :string
  end
end

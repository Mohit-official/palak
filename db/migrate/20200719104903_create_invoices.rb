class CreateInvoices < ActiveRecord::Migration[5.1]
  def change
    create_table :invoices do |t|
      t.integer :value
      t.string :address

      t.timestamps
    end
  end
end

class CreateMyitems < ActiveRecord::Migration[5.2]
  def change
    create_table :myitems do |t|
      t.integer :item_id
      t.integer :customer_id
      t.string :serial_id
      t.string :purchase_date

      t.timestamps
    end
  end
end

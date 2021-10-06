class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.integer :post_id
      t.string :name
      t.text :description
      t.string :image

      t.timestamps
    end
  end
end

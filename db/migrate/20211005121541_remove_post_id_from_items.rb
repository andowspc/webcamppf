class RemovePostIdFromItems < ActiveRecord::Migration[5.2]
  def change
    remove_column :items, :post_id, :integer
  end
end

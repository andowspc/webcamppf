class RemoveCustomerIdFromPosts < ActiveRecord::Migration[5.2]
  def change
    remove_column :posts, :customer_id, :integer
  end
end

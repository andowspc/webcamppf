class RemoveCreatedAtFromInquiries < ActiveRecord::Migration[5.2]
  def change
    remove_column :inquiries, :created_at, :datetime
  end
end

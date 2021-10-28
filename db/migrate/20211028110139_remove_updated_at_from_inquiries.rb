class RemoveUpdatedAtFromInquiries < ActiveRecord::Migration[5.2]
  def change
    remove_column :inquiries, :updated_at, :datetime
  end
end

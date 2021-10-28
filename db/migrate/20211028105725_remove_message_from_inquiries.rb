class RemoveMessageFromInquiries < ActiveRecord::Migration[5.2]
  def change
    remove_column :inquiries, :message, :string
  end
end

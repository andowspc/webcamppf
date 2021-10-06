class Item < ApplicationRecord
  
  belongs_to :customers
  has_many :posts, dependent: :destroy
  attachment :image
  
end

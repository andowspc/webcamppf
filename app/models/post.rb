class Post < ApplicationRecord
  
  belongs_to :item
  
  validates :title, presence: true
  validates :post, presence: true
  
end

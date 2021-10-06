class Item < ApplicationRecord
  
  has_many :myitems, dependent: :destroy 
  has_many :posts, dependent: :destroy
  has_many :favorites, dependent: :destroy
  attachment :image
  
end

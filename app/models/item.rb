class Item < ApplicationRecord
  
  has_many :myitems, dependent: :destroy 
  has_many :posts, dependent: :destroy
  has_many :favorites, dependent: :destroy
  attachment :image
  
  validates :name, presence: true
  validates :description, presence: true
  
end

class Item < ApplicationRecord
  
  has_many :myitems, dependent: :destroy 
  has_many :posts, dependent: :destroy
  has_many :favorites, dependent: :destroy
  attachment :image
  
  validates :name, presence: true
  validates :description, presence: true
  
  def self.search_for(content, method)
    if method == 'perfect'
      Item.where(name: content)
    elsif method == 'forward'
      Item.where('name LIKE ?', content+'%')
    elsif method == 'backward'
      Item.where('name LIKE ?', '%'+content)
    else
      Item.where('name LIKE ?', '%'+content+'%')
    end
  end
  
  def favorited_by?(customer)
    favorites.where(customer_id: customer.id).exists?
  end
  
  
  
end

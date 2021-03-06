class Product < ActiveRecord::Base
  has_many :likes, dependent: :destroy
  has_many :users, through: :likes
  validates :price, :numericality => {:greater_than_or_equal_to => 0}
  
  def self.category_types
    ['Apparel', 'Accessories', 'Tech']
  end

end

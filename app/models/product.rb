class Product < ActiveRecord::Base
  has_many :likes
  validates :price, :numericality => {:greater_than_or_equal_to => 0}
end

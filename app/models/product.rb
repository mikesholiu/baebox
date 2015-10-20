class Product < ActiveRecord::Base
  validates :price, :numericality => {:greater_than_or_equal_to => 0}
end

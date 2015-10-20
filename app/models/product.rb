class Product < ActiveRecord::Base
  validates :price, numericality: true
end

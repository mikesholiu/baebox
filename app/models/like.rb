class Like < ActiveRecord::Base
  belongs_to :users
  belongs_to :products
  validates :user_id, uniqueness: { scope: :product_id }
end
